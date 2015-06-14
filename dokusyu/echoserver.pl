#! /bin/perl -w
# echoserver.pl

use IO::Socket;

$server_socket = 
    new IO::Socket::INET(
      LocalPort => '10000',
      Proto => 'tcp',
      Listen => 5,
      Reuse => 1  
    );

unless ($server_socket){
    print "Socket Error : $!\n";
}

$client_socket = $server_socket->accept();

while ($string = <$client_socket>){
    print "recieved : $string";
}

$client_socket->close();
$server_socket->close();
