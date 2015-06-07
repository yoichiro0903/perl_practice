#! /bin/perl -w
#
# dbConnect.pl
#
# sample file name : dbConnect.pl

use strict;
use warnings;
use utf8;

use DBIx::Connector;
use Encode 'encode';

my $dsn = 'dbi:SQLite:dbname=:memory:';
my $conn = DBIx::Connector->new(
            $dsn, #data source name
            undef, #user name
            undef, #password
            {
                RaiseError => 1,
                PrintError => 0,
                AutoCommit => 1,
                sqlite_unicode => 1   
            }
           );
my $dbh = $conn->dbh;
my $create_table_sql = <<"EOS";
    create table magazine (
        id primary key,
        title not null default '',
        author not null default ''
    );
EOS
$dbh->do($create_table_sql);

my $sth = $dbh->prepare('insert into magazine (id,title,author) values (?,?,?)');
$sth->execute('0001','perl practice','Watanabe Yoichiro');
$sth->execute('0002','perl practice2','Watanabe Yoichiro');
$sth->execute('0003','ruby practice','Watanabe Yoichiro');

$sth = $dbh->prepare('select * from magazine');
$sth->execute();

while (my $row = $sth->fetchrow_hashref){
    my $id = $row->{id};
    my $title = $row->{title};
    my $author = $row->{author};
    my $line = "id: $id, title: $title, author: $author\n";
    my $enc = $^O eq 'MSWin32' ? 'cp932' : 'UTF-8';
    print encode($enc,$line);
}

