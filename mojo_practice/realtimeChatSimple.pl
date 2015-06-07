#! /bin/perl -w
#
# realtimeChat.pl
#
# sample file name : realtimeChat.pl

use strict;
use warnings;

use Mojolicious::Lite;
my $clients = {};

websocket '/' => sub {
    my $self = shift;

    #client id
    my $cid = "$self";
    #print $cid;
    $clients->{$cid}{controller} = $self;

    #recieve message 
    $self->on('message' => sub {
        my ($self, $message) = @_;
        
        #send message to all clients
        foreach my $cid (keys %$clients){
            $clients->{$cid}{controller}->send($message);
        }
    });

    #finish
    $self->on('finish' => sub {
        #remove client
        delete $clients->{$cid};
    });
};

get '/' => 'index';
app->start;

__DATA__
@@ index.html.ep
% my $url = $self->req->url->to_abs->scheme($self->req->is_secure ? 'wss' : 'ws')->path( '/' );
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mojo Websocket Demo</title>
    <script type="text/javascript">
        var ws, input, clock;
                                                            
        function init() {
                                                                          
            // Connect to Web Socket.
            ws = new WebSocket('<%= $url %>');
                                                                                            
            // Receive message
            ws.onmessage = function(e) {
                //Write message
                var message = document.createElement('div');
                message.appendChild(document.createTextNode(e.data));
                var display = document.getElementById('display');
                display.appendChild(message);
            };
        }

        function sendChatMessage(){
            var input = document.getElementById('message-box');
            var message = input.value;

            //send message
            ws.send(message);
            input.value = "";
        }

        window.onload = init;
    </script>
</head>
<body>
    <div id="display" style="width:500px; height:200px; border:1px solid black"></div>
    <form onsubmit="sendChatMessage(); return false;">
        <input size="60" type="text" id="message-box">
        <input type="submit" onclick="sendChatMessage(); return false;" value=Send>
    </form>
    <%= $url %>
</body>
</html>
