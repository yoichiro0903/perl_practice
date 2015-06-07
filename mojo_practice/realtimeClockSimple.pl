#! /bin/perl -w
#
# realtimeClock.pl
#
# sample file name : realtimeClock.pl

use Mojolicious::Lite;
use Mojo::IOLoop;

my $clients = {};
my $loop = Mojo::IOLoop->singleton;

websocket '/' => sub {
    my $self = shift;
    my $cid = "$self";
    print STDOUT "$cid \n";
    
    # controller
    my $controller = $self;
    
    #send date and time
    my $datetime = localtime;
    $self->send($datetime);
    
    #recieve message
    $self->on('message' => sub{
        my ($self,$message) = @_;
        print STDOUT "self : $self \n";
        
        #start clock
        if ($message eq 'Start'){
            #shortcut
            return if $clients->{$cid}{running};
            
            #start
            $clients->{$cid}{running} = 1;

            #subroutine for sending date and time
            my $send_datetime;
            $send_datetime = sub {
                #send date and time
                my $datetime = localtime;
                $controller->send($datetime);
                #timer
                $loop->timer(1,$send_datetime) if $clients->{$cid}{running};
            };
            #send
            $send_datetime->();
        } else {
            #stop clock
            $clients->{$cid}{running} = 0;
        }
    });
    $self->on('finish' => sub {
        #remove client
        delete $clients->{$cid};
        print STDOUT "finished websocket \n";
    });
};

get '/' => 'index';
app->start;


__DATA__
@@ index.html.ep
% my $url = $self->req->url->to_abs->scheme($self->req->is_secure ? 'wss' : 'ws')->path('/');
<!doctype html>
<html>
    <head>
        <title>mojo websocket demo</title>
        <script type="text/javascript">
            var ws, input, clock;

            function init(){
                //connect to websocket
                ws = new WebSocket('<%= $url %>');
                ws.onmessage = function(e){
                    //update clock
                    clock = document.getElementById('clock');
                    clock.innerHTML = e.data;
                };
            }

            function onClockStart(){
                //start clock
                alert("push start before");
                ws.send('Start');
                alert("push start");
            }

            function onClockStop(){
                //stop clock
                ws.send('Stop');
                alert("push stop");
            }
            window.onload = init;
        </script>
    </head>
    <body>
        <span id="clock"></span>
        <button onClick="onClockStart(); return false;">start</button>
        <button onClick="onClockStop(); return false;">stop</button>
    </body>
</html>

