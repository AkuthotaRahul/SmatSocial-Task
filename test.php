<html>
<head>
<title>HashTag Search</title>
</head>
<form method="post">
	<input type="text" name="Tweet" placeholder="Enter the HashTag to search"/>	<!--textbox for Hashtag from user-->
    <input type="submit" name="test" value="Search" /><br/>	<!--button for search users how used Entered Hashtag-->
</form>
</html>

<!--For easy understanding I wrote php code in this file only we can store in different file also-->

<?php
if(array_key_exists('test',$_POST))
{
   searchfun();							//Calling function after button press
}

function searchfun()
{
	$t=$_POST["Tweet"];
	if($t!=null)							//checking any text is present in textbox are not
	{
		$mysql_hostname = "localhost";		//localhost xampp
		$mysql_user = "root";
		$mysql_password = "";
		$mysql_database = "tweet";			//Database Name
		$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password);
		if (!$bd)
		{
			echo "Opps some thing went wrong in connection to server";
		}
		mysql_select_db($mysql_database, $bd);
		$qry = "SELECT * FROM userdetails";				//"userdetails" is a table in "tweet" database
		$results = mysql_query($qry);					//Excuting the qurey
		echo "Search results for ".$t."<br/><br/>";
		$userlist ="";							//Used to store users names who used the tag 
		$brandlist = "";						//Used to store Brand names who used the tag
		while ($row = mysql_fetch_array($results))
      	{
      		if(stripos($row["Tweet"],$t)!== false)		//checking whether tag is present are not
      	 	{
				if($row["Category"]=="User")			//checking the category of the user
				{
					$userlist = $userlist . "@" . $row["UserName"] ."<br/>";
				}
				else
				{
					$brandlist = $brandlist ."@" . $row["UserName"] . "<br/>";
				}
      	    }
	    }
	    echo "Users<br/>";				//print Users Label for user group
	    echo $userlist;					//printing Users list
	    echo "<br/>Brands<br/>";		//print Brand Label for Brand group
	    echo $brandlist;				//printing Brand list
	}
	else
	{
		echo "please enter a Hash tag to search";
	}
}
?>
