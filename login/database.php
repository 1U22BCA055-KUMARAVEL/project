<?php
$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = 'pgpb';

$dbConn = mysqli_connect ($dbHost, $dbUser, $dbPass) or die ('MySQL connect failed. ' . mysqli_error($dbConn));
mysqli_select_db($dbConn,$dbName) or die('Cannot select database. ' . mysqli_error($dbConn));

function dbQuery($sql)
{
	global $dbConn;
	$result = mysqli_query($dbConn,$sql) or die(mysqli_error($dbConn));
	
	return $result;
}

function dbAffectedRows()
{
	global $dbConn;
	
	return mysqli_affected_rows($dbConn);
}


function dbFetchAssoc($result)
{
	global $dbConn;
	return mysqli_fetch_assoc($result);
}

function dbFetchRow($result) 
{
	global $dbConn;
	return mysqli_fetch_row($dbConn,$result);
}


function dbNumRows($result)
{
	global $dbConn;
	return mysqli_num_rows($result);
}

?>