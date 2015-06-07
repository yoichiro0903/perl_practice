#! /bin/perl -d
#
# arrayRef7.pl
#
# sample file name: arrrayRef7.pl

$schedule[1]->[1] = 'gantan';
$schedule[2]->[3] = 'setsubun';
$schedule[3]->[3] = 'hinamatsuri';
$schedule[5]->[5] = 'GW';
$schedule[7]->[7] = 'tanabata';
$schedule[8]->[31] = 'shukudai';

for $month (1..12){
	for $day (1..31){
		if (defined $schedule[$month][$day]){
			print "$month gatsu $day nichi : $schedule[$month][$day] seyo \n";
		}
	}
}