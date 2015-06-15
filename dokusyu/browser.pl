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
print $client_socket "HEAD $file HTTP/1.0\n\n";

while($receive = <$client_socket>){
	print $receive;
	if($receive =~ /Date/){
		open(F,">>web_record.txt") || die "cannnot open web_record.txt\n";
		print F "$url\t$receive";
	}

}

$client_socket->close();