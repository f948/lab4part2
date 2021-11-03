#!/usr/bin/perl

use CGI ':standard';


print "Content-type:text/html\n\n";


$firstname = param('First Name');
$lastname = param("Last Name");
$streetname = param("Street Name");
$city = param("City");
$postalcode=param("Postal Code");
$emailaddress=param("Email Address");
$phonenumber=param("Phone Number");


$error=0;

@Array=('1','2','3','4','5','6','7','8','9','0');

		if (length($phonenumber)== 10){
			
			print "The phone number must be 10 characters long";
			$error=1;
		}
		
		for ($i = 0;$i<=length($phonenumber);$i++){
			
			if(exists($phonenumber[$i])){
				
			}
			
			else{
				print"Only digits are allowed in phone number";
				$error=1;
			}
		}
		
		
		if (!length($postalcode) == 10){
			
			print"The phone number must be 10 characters long";
			$error=1;
		}
		
		
		if($error == 0){
			
			print"First Name:"+$firstname;
			print"Last Name:"+$lastname;
			print"Street Name:"+$streetname;
			print"City:"+$city;
			print"Postal Code:"+$postalcode;
			print"Email Address:"+$emailaddress;
			print"Phone Number:"+$phonenumber;
			print"Password:"+$password;
			print"Province:"+$province;
		}


