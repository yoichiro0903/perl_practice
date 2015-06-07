#! /bin/perl -w
#
# myApp.pl
#
# sample file name : myApp.pl

use Mojolicious::Lite;

# Read config file
plugin('Config');

# Output to log
app->log->info('Starting Application');

# Get path of database file
#my $db_file = app->home->rel_file('db/myapp.db');

get '/' => sub {
    my $self = shift;
    my $app = $self->app;
    
    # Output to log
    $app->log->info('Access information');

    my $db_file = $app->home->rel_file('db/myapp.db');

    # Get from config file
    my $name = $app->config('name');
    my $age = $app->config('age');

    # Template
    $self->render(
        'info',
        # This is stash
        name => $name,
        age => $age,
        db_file => $db_file
    );
};

# Redirect

get '/some' => sub {
    my $self = shift;
    $self->redirect_to('/other');
};

get '/other' => sub {
    my $self = shift;
    $self->render(text => 'Other page');
};

app->start;
