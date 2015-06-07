#! /bin/perl -w
#
# webDate2.pl
#
# sample file name : webDate2.pl

use Mojolicious::Lite;

get '/diary' => sub {
    my $self = shift;
    my $date = $self->param('date');
    my $user = $self->param('user');
    $self->render(text => "Date: $date, User: $user");
};

app->start;
