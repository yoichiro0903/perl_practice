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
    #print $cid;
    
    # controller
    my $controller = $self;
    
    #send date and time
    my $datetime = localtime;
    $self->send($datetime);
    
    #recieve message
    $self->on('message' => sub{
        my ($self,$message) = @_;
        
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
        //only load the flash fallback when needed
        if(!('WebSocket' in window)){
            document.write([
                '<scr'+'ipt type="text/javascript" src="web-socket-js/swfobject.js"></scr'+'ipt>',
                '<scr'+'ipt type="text/javascript" src="web-socket-js/FABridge.js"></scr'+'ipt>',
                '<scr'+'ipt type="text/javascript" src="web-socket-js/web_socket.js"></scr'+'ipt>'
            ].join(''));
        }
        </script>
        <script type="text/javascript">
            if(WebSocket.__initialize){
                //set url of your websocketmain.swf here:
                WebSocket.__swfLocation = 'web-socket-js/WebSocketMain.swf';
            }
            //example copied from web-socket-js / sample.html
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

