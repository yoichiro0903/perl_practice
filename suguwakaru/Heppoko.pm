#
# Heppoko.pm
#
# sample file name : Heppoko.pm

use strict;
package Heppoko;

sub kaisyaMei{"へっぽこ産業株式会社"};
sub tenmei {"本店"};
sub shachou{"へっぽこたろう"};
sub juusho{"台風県大雨市"};
sub denwa{"123-123-121"};
sub bank{"ゆうちょ銀行りす支店"};
sub AUTOLOAD{our $AUTOLOAD; "Error $AUTOLOAD is not defined attribute"};

1;	
