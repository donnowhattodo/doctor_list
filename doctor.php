<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "doctor";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to fetch doctors from the database
function getDoctors($conn, $category = null, $hospitalName = null, $feeMin = null, $feeMax = null) {
    $sql = "SELECT * FROM doctor WHERE 1";
    
    // Add WHERE conditions based on category, hospital name, and fee range
    if ($category) {
        $sql .= " AND specialization = '$category'";
    }
    
    if ($hospitalName) {
        $sql .= " AND hospital_name LIKE '%$hospitalName%'";
    }
    
    if ($feeMin && $feeMax) {
        $sql .= " AND doctor_fee >= $feeMin AND doctor_fee <= $feeMax";
    }
    
    $result = $conn->query($sql);
    $doctors = array();
    
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $doctors[] = $row;
        }
    }
    
    return $doctors;
}

// Fetch unique categories from the database
$sql_categories = "SELECT DISTINCT specialization FROM doctor";
$result_categories = $conn->query($sql_categories);
$categories = array();

if ($result_categories->num_rows > 0) {
    while ($row = $result_categories->fetch_assoc()) {
        $categories[] = $row['specialization'];
    }
}

// Initialize variables
$category = '';
$hospitalName = '';
$feeMin = '';
$feeMax = '';

// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $category = $_POST['category'] ?? '';
    $hospitalName = $_POST['hospital_name'] ?? '';
}

// Check if fee range form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $feeMin = $_GET['fee_min'] ?? '';
    $feeMax = $_GET['fee_max'] ?? '';
}

// Fetch doctors based on the search parameters
$doctors = getDoctors($conn, $category, $hospitalName, $feeMin, $feeMax);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Directory</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Doctor List</h1>
        
        <form method="POST" action="doctor.php">
            <select name="category">
                <option value="">All Categories</option>
                <?php foreach ($categories as $cat) { ?>
                    <option value="<?php echo $cat; ?>" <?php if ($category === $cat) echo 'selected'; ?>><?php echo $cat; ?></option>
                <?php } ?>
            </select>
            
            <input type="text" name="hospital_name" placeholder="Enter hospital name" value="<?php echo $hospitalName; ?>">
            
            <input type="submit" value="Search">
        </form>
        
        <form method="GET" action="doctor.php">
            <label for="fee_min">Fee Min:</label>
            <input type="number" name="fee_min" min="0" value="<?php echo $feeMin; ?>">
            
            <label for="fee_max">Fee Max:</label>
            <input type="number" name="fee_max" min="0" value="<?php echo $feeMax; ?>">
            
            <input type="submit" value="Search by Fee Range">
        </form>
        
        <table>
            <tr>
                <th>Doctor Name</th>
                <th>Hospital Name</th>
                <th>Visiting Hour</th>
                <th>Timing</th>
                <th>Specialization</th>
                <th>Doctor Information</th>
                <th>Doctor Fee</th>
            </tr>
            
            <?php foreach ($doctors as $doctor) { ?>
                <tr>
                    <td><?php echo $doctor['doctor_name']; ?></td>
                    <td><?php echo $doctor['hospital_name']; ?></td>
                    <td><?php echo $doctor['visiting_hour']; ?></td>
                    <td><?php echo $doctor['timing']; ?></td>
                    <td><?php echo $doctor['specialization']; ?></td>
                    <td><?php echo $doctor['doctor_info']; ?></td>
                    <td><?php echo $doctor['doctor_fee']; ?></td>
                </tr>
            <?php } ?>
        </table>
    </div>
</body>
</html>

<?php
// Close the database connection
$conn->close();
?>
