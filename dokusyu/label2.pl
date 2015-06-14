#! /bin/perl -w
# label2.pl

LP1: for ($i = 0; $i <= 5; $i++){
    LP2: for($j = 0; $j <= $i; $j++){
        if($i == 2 && $j == 2 ){
            print "[if]";
            $i += 2;
            redo LP1; 
        }
        print "$j-";
    }
    print "\n";
}
