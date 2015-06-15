#! /bin/perl -w
# pingserver.pl

use IO::Socket;

$SIG{CHILD} = sub { wait() };

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
		# nothing
	} elsif(defined $pid) {
		while ($string = <$client_socket>){
			chomp($string);
			print $client_socket "PONG\n" if($string =~ /PING/); 
		}
	}
}