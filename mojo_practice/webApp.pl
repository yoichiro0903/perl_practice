#! /bin/perl -w
#
# webApp.pl
# 
# sample file name : webApp.pl

use Mojolicious::Lite;

get '/test'=>sub {
    my $self = shift;

    $self->render(text=>'Hello Mojolicious'); 
};

app->start;
