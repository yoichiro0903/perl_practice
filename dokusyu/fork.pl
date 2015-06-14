#! /bin/perl -w
# fork.pl

if($pid = fork()){
    for ($i = 1; $i <= 3; $i++){
        print "parent process : pid $pid\n";
        sleep(3);
    }
    waitpid($pid,0);
} elsif (defined $pid){ 
    for ($i = 1; $i <= 5; $i++){
        print "child process : pid $pid\n";
        sleep(1);
    }
} else {
    die "cannot fork : $!\n";
}
