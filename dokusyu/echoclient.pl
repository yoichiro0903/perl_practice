#! /bin/perl -w
# echoclient.pl

use IO::Socket;

$client_socket = 
    new IO::Socket::INET(
        PeerAddr => 'localhost',
        PeerPort => '10000',
        Proto => 'tcp',
        TimeOut => '5'
    );
unless ($client_socket){
    print "Socket Error : $!\n";
}

while ($string = <STDIN>){
    if ($string =~ /^QUIT/){
        last;
    }
    print $client_socket "$string";
}

$client_socket->close();
