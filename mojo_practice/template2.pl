#! /bin/perl -w
#
# template.pl
#
# sample file name : template.pl

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
@@ index.html.ep
<%
 my $name = 'yoichiro';
 my $age = 26;
 my @nums = (3,4,5);
%>
<html>
  <head>
      <title>Index</title>
  </head>
  <body>
    <h1>Index</h1>
    % if ($name eq 'yoichiro'){
        Yoichiro!!
    % } else {
        someone
    % }
    <br>
    He is <%= $age %> years old.<br>
    
    % for my $num (@nums){
        <%= $num %><br>  
    % }
  </body>
</html>

@@ company/info.html.ep
<html>
  <head>
      <title>Company Information</title>
  </head>
  <body>
    Company Information
  </body>
</html>
