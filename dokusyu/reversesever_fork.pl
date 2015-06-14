#! /bin/perl -w
# reverseserver_fork.pl

use IO::Socket;

$SIG{CHID} = sub { wait () };

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

do {
    $client_socket = $server_socket->accept();
    if($pid = fork()){
        #do nothing, return to waiting
    } elsif (defined $pid) {
        while ($string = <$client_socket>){
            chomp($string);
            print $client_socket reverse(split(//,$string)), "\n";
        }
        exit;
    } else {
        die "cannot fork $!\n";
    }
} until(0);

$server_socket->close();
