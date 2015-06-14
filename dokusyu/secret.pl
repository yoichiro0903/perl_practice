#! /bin/perl -w
#
# secret.pl
#
# sample file name : secret.pl

print "number1 : ";
$number1 = <STDIN>;
chomp($number1);

print "number2 : ";
$number2 = <STDIN>;
chomp($number2);

if (($number1 > 5 && $number2 > 5) && $number1 > $number2){
    print "true";
} else {
    print "false";    
}

#print "user name : ";
#$user_name =  <STDIN>;
#chomp($user_name);
#
#print "password : ";
#$password =  <STDIN>;
#chomp($password);
#
#if ($user_name eq "yoichiro" && $password eq "pass"){
#    print "success";
#} else {
#    print "wrong";
#}
#
#
