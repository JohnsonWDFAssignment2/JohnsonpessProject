<!-- Done By Johnson Lim -->

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Police Emergency Service System</title>
<link href="header_style.css" rel="stylesheet" text="text/css">
<link href="content_style.css" rel="stylesheet" text="text/css">
<script type="text/javascript">
function validateForm()
{
    var x=document.forms["frmLogCall"]["callerName"].value;
    if(x==null || x=="")
    {
        alert("Caller Name is required.");
        return false;
    }
    //may add code for validating other inputs
    var x=document.forms["frmLogCall"]["contactNo"].value;
    if(x==null || x=="")
    {
        alert("Contact Number is required.");
        return false;
    }
    var x=document.forms["frmLogCall"]["location"].value;
    if(x==null || x=="")
    {
        alert("Location is required.");
        return false;
    }
    var x=document.forms["frmLogCall"]["incidentType"].value;
    if(x==null || x=="")
    {
        alert("Incident description is required.");
        return false;
    }
    var x=document.forms["frmLogCall"]["incidentDesc"].value;
    if(x==null || x=="")
    {
        alert("Incident description is required.");
        return false;
    }

    
}
</script>
</head>
<body>

<?php //import nav.php
require_once 'nav.php';
?>
<?php //import db.php
require_once 'db.php';

//Create connection
$conn = new mysqli(DB_SERVER, DB_USER, DB_PASSWORD, DB_DATABASE);
//Check connection
if ($conn->connect_error) {
    die("Connection failed: ". $conn->connect_error);
}
$sql = "SELECT * FROM  incident_type";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        /*create an associative array of $incidentType (incident_type_id, incident_type_desc) */
        $incidentType[$row['incident_type_id']] = $row['incident_type_desc'];
    }
}

$conn->close();
?>
<form name = "frmLogCall" method="POST"
 onSubmit="return validateForm()" action="dispatch.php">
 <table class="ContentStyle">
<tr>
    <td colspan="2">Log Call Panel</td>
</tr>

<tr>
    <td>Caller's Name :</td>
    <td><input type="text" name="callerName" id="callerName" pattern="[A-Za-z]{<=6=15}" title="Please type a length between 6 to 15 characters" minlength="6" maxlength="15"></td>
</tr>
<tr>
    <td>Contact No :</td>
    <td><input type="text" name="contactNo" id="contactNo" pattern="[0-9]{8}" title="Please fill contact number with 8 digits from 0-9" minlength="8" maxlength="8"></td>
</tr>
<tr>
    <td>Location :</td>
    <td><input type="text" name="location" id="location" pattern="^(?![0-9._])(?!.*[0-9._]$)(?!.*\d_)(?!.*_\d)[a-zA-Z0-9_]+${20}" title="Please fill in the address of the incident" minlength="10" maxlength="20" ></td>
</tr>
<tr>
    <td>Incident Type :</td>
    <td>
        <select name="incidentType" id="incidentType">
        <?php // populate a combo box with $incidentType
            foreach ($incidentType as $key=> $value) {
        ?>
            <option value="<?php echo $key ?>">
                <?php echo $value ?>
            </option>
        <?php 
            }
        ?>
        </select>
    </td>
</tr>
<tr>
    <td>Description :</td>
    <td><textarea name="incidentDesc" id="incidentDesc" cols="45" 
            rows="5" ></textarea>
    </td>
</tr>
<tr>
    <td><input type="reset" name="btnCancel" id="btnCancel" value="Reset"></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" 
    name="btnProcessCall" id="btnProcessCall" value="Process Call...">
    </td>
</tr>
</table>
</form>
</body>
</html>