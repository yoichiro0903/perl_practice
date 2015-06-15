#! /bin/perl -w
# browser.pl

use IO::Socket;

print "URL :";
$url = <STDIN>;
chomp($url);

if($url =~ /http:\/\/([^\/]+)(\/.*)/){
	$host = $1;
	$file = $2;
} else {
	die "cannot open url\n";
}

$client_socket = 
	new IO::Socket::INET(
		PeerAddr => $host,
		PeerPort => 'http',
		Proto => 'tcp',
		TimeOut => '5'
	);
unless($client_socket){
	print "Socket Error: $!\n";
}

print "$host $file"."\n";
print $client_socket "GET $file HTTP/1.0\n\n";

while($receive = <$client_socket>){
	print $receive;
}

$client_socket->close();