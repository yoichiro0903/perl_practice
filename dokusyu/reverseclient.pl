#! /bin/perl -w
# reverseclient.pl

use IO::Socket;

$client_socket = 
    new IO::Socket::INET(
        PeerAddr => 'localhost',
        PeerPort => '10000',
        Proto => 'tcp',
        TimeOut => '5'
    );
unless ($client_socket){
    print "socket Error:$!\n";
}

while ($string = <STDIN>){
    if ($string =~ /^QUIT/){
        last;
    }
    print $client_socket "$string";
    $receive = <$client_socket>;
    print $receive;
}

$client_socket->close();
