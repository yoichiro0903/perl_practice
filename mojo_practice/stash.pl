#! /bin/perl -w
#
# stash.pl
#
# sample file nmae : stash.pl

use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    $self->render('index','name'=>'Yoichiro','age'=>26);
};

app->start;

__DATA__

@@ index.html.ep
<%
    my $name = stash('name');
    my $age = stash('age');
%>
<html>
    <head>
        <title>Index</title>
    </head>
    <body>
        <h1><%= $name %>:<%= $age %></h1>
    </body>
</html>
