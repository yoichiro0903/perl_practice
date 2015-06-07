#
# Heppoko_all.pm
#
# sample file name : Heppoko_all.pm

use strict;
package Heppoko;

sub kaisyaMei{"へっぽこ産業株式会社"};
sub tenmei {"本店"};
sub shachou{"へっぽこたろう"};
sub juusho{"台風県大雨市"};
sub denwa{"123-123-121"};
sub bank{"ゆうちょ銀行りす支店"};
sub AUTOLOAD{our $AUTOLOAD; "Error $AUTOLOAD is not defined attribute"};


package Kosame;
our @ISA = qw(Heppoko);

sub tenmei {"小雨支店"};
sub juusho{"梅雨県小雨町"};
sub denwa{"555-555-555"};

1;	
