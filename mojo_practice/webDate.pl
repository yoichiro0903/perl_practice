#! /bin/perl -w
#
# webDate.pl
#
# sample file name : webDate.pl

use Mojolicious::Lite;

get '/date/:date' => sub {
    my $self = shift;
    my $date = $self->param('date');
    $self->render(text => "Data: $date");
};

app->start;
