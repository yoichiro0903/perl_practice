#! /bin/perl -w
#
# form.pl
#
# sample file name : form.pl

use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    $self->render('index');
};

get '/form' => sub {
    my $self = shift;
    my $name = $self->param('name');
    my $private = $self->param('private');
    my $message = $self->param('message');
    
    unless(length $message){
        $self->render('index',error => 'Message is empty');
        return;
    };

    $self->flash(name => $name);
    $self->flash(private => $private);
    $self->flash(message => $message);

    $self->redirect_to('/');

};

app->start;

__DATA__
@@ index.html.ep
<%
my $error = stash('error');
%>

% if ($error){
    <div style="color:red">
        <%= $error %> 
    </div>
% }

<form action="<%= url_for('/form') %>" method="get" style="border:1px solid gray">
    Form
    Name : <%= text_field 'name' %><br>
    Private : Yes <%= radio_button private => 1 %> / No <%= radio_button private => 0, checked => 'checked' %><br>
    <%= text_area 'message', style => "width:400px; height:100px" %><br>
    <input type="submit" value="get">
</form>

<div>
    Name : <%= flash('name') // '' %><br>
    Private : <%= flash('private') // '' %><br>
    Message : <%= flash('message') // '' %>
</div>

