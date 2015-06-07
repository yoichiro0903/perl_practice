#! /bin/perl -w
#
# routing.pl
#
# sample file name : routing.pl

use Mojolicious::Lite;

under sub {
    my $self = shift;

    # Access deny if user is admin
    my $user = $self->url_for->path->parts->[0] // '';
    if ($user eq 'admin'){
        $self->res->code(403);
        $self->render(text => 'Forbidden');
        return;
    };
    return 1;
};

# /user_name/project_name/directory_nmae
# or /user_name/project_name
get '/:user/:project/*dir' => {dir => undef} => sub {
    my $self = shift;
    my $user = $self->param('user');
    my $project = $self->param('project');
    my $dir = $self->param('dir') // 'Nothing';
    
    $self->render(
        'index',
        user => $user,
        project => $project,
        dir => $dir
    );
};

any '/http-method' => sub {
    my $self = shift;
    my $http_method = $self->req->method;
    $self->render(text => "HTTP Method: $http_method");
};

app->start;

__DATA__

@@ index.html.ep
<%
    my $user = stash('user');
    my $project = stash('project');
    my $dir = stash('dir');
%>

<html>
    <head>
        <title>Routing</title>
    </head>
    <body>
        User: <%= $user %>
        Project: <%= $project %>
        Dir: <%= $dir %>
    </body>
</html>















