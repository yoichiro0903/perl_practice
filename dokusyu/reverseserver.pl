#! /bin/perl -w
# reverseserver.pl

use IO::Socket;

$server_socket = 
    new IO::Socket::INET(
        LocalPort => '10000',
        Proto => 'tcp',
        Listen => 5,
        Reuse => 1
    );

unless($server_socket){
    print "Socket Error: $!\n";
}

do {
    $client_socket = $server_socket->accept();
    print "connect\n";
    while ($string = <$client_socket>){
        chomp($string);
        #reverse text
        print $client_socket reverse(split(//,$string)), "\n";
    }
    $client_socket->close();
    print "close\n";
} until(0);
