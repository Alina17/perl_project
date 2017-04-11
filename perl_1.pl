#!usr/bin/perl
use strict;
use warnings;


my $file = 'solar.txt';
open my $info, $file or die "Could not open $file: $!";
my @array =(<$info>);


printf "\nPrint all objects without descoverer\n\n";

for my $record (@array) {
    my @tempArray = split(/ /, $record);
    print  "$record" if $record=~m/((.)+\s){7}(-)/i;
}

printf "\nChange orbital period from days to seconds\n\n";

for  my $record (@array) {
     my @tempArray = split(/\s{1,}/, $record);

     if($tempArray[4] ne "?" && $tempArray[4] ne "-") {
          @tempArray[4] = $tempArray[4]*86400;
     }
     print "@tempArray\n";
}

printf "\nPrint all objects without 2nd field\n\n";

for my $record (@array) {
    my @tempArray = split(/ /, $record);
    print "$record" if $record=~s/\s(I|V|X|(-))+\s/ /;
}

printf "\nPrint objects with negative orbital periods\n\n";

for my $record (@array) {
     my @tempArray = split(/ /, $record);
     print "$record" if $record=~m/\s(-)\d+/;
}

printf "\nPrint objects that descovered by Voyager2\n\n";

for  my $record (@array) {
     my @tempArray = split(/ /, $record);
     print "$record" if $record=~m/Voyager2/i;
}

printf "\n";

close $info;
