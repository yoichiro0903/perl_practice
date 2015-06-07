#! /usr/bin/perl -w
#
#
# cgiHello.cgi
# 
# sample file name : cgiHello.cgi

use CGI;
$q = new CGI;
print $q->header,
    $q->start_html('hello world'),
    $q->h1('hello world h1'),
    $q->end_html,
;

