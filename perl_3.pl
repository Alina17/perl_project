#!usr/bin/perl
use strict;
use warnings;

my $file = 'my_text.txt';
open my $info, $file or die "Could not open $file: $!";
my @array =(<$info>);
open(my $fh, '>', 'output1.txt');


 for my $digits(@array){
	$digits=~s/0/zero/g;
	$digits=~s/1/one/g;
	$digits=~s/2/two/g;
	$digits=~s/3/three/g;
	$digits=~s/4/four/g;
	$digits=~s/5/five/g;
	$digits=~s/6/six/g;
	$digits=~s/7/seven/g;
	$digits=~s/8/eight/g;
	$digits=~s/9/nine/g;
	print $fh "$digits";
        print "$digits";
	}


     close $info;
     close $fh;
