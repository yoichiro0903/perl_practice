#! /bin/perl -w
#
# template2.pl
#
# sample file name : template2.pl

use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    $self->render('index');
};

get '/company/info' => sub {
    my $self = shift;
    $self->render('company/info');
};

app->start;

__DATA__

@@ layouts/common.html.ep
<html>
    <head>
        <title><%= stash('title') %></title>
    </head>
    <body>
        %= content;
    </body>
</html>

@@ index.html.ep
% layout 'common', title=>'index';
    <h1>index dayo</h1>

@@ company/info.html.ep
% layout 'common', title=>'company Infomation';
    <h1>company info dayo</h1>
