#! /bin/perl -w
#
# templateHelper.pl
#
# sample file name : templateHelper.pl

use Mojolicious::Lite;

get '/person' => sub {
    my $self = shift;
    my $name = $self->param('name');
    my $age = $self->param('age');
    $self->render('index',name => $name, age => $age);  
};

app->start;

__DATA__
@@ index.html.ep
<%
    my $name = stash('name');
    my $age = stash('age');
    app->log->info('Template Helper');
    my $http_method = $self->req->method;
    my $data = [1,2,3];
    warn dumper $data;
%>

<html>
    <head>
        <title>title: template helper</title>
        %= stylesheet '/css/common.css';
        %= javascript '/js/common.js';
    </head>
    <body>
        %= include '/include/header'

        Name : <%= $name %><br>
        Age : <%= $age %><br>
        Current URL : <%= url_with %><br>
        Current URL with some change : <%= url_with->query([name => 'yoichiro']) %>
        %= include '/include/footer';
    </body>
</html>
