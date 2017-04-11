#!usr/bin/perl -w
use strict;
use warnings;

my $file = 'electricity.txt';
open my $info, $file or die "Could not open $file: $!";
my @lines = readline($info);
open (my $fh, '>', 'output_1.txt');

close $info;

my @array;
foreach(@lines){
     chomp;
     @array = (@array, split(/[^\w\']+\s*/));

}
@array = grep /\S/, @array;

my %words;
my $length=length($array[0]);
foreach(@array){
     if(length($_)>$length){
          $length=length($_);
     }
     if(exists $words{$_}){
          $words{$_}+=1;
     }else{
          $words{$_}=1;
     }
}

my @case_insensetive;
my @case_sensetive;
my @by_frequency;
my @by_freq_and_case;
foreach my $key(sort ({ "\L$a" cmp "\L$b" } keys (%words))){
     push(@case_insensetive,$key);
}
foreach my $key(sort keys (%words)){
     push(@case_sensetive,$key);
}
foreach my $key(sort {$words{$b}<=>$words{$a}} keys (%words)){
     push(@by_frequency,$key);
}
foreach my $key(sort {$words{$b}<=>$words{$a} or "\L$a" cmp "\L$b"} keys (%words)){
     push(@by_freq_and_case,$key);
}
my $colums=4;
my $size=@case_insensetive;
my $i=0;
my $adjusted=$size/$colums;

print $fh "Alphabetically (ignoring capitalization)\n\n";
while($i<$adjusted){
     my $j=0;
     while($j<$colums){
          if(exists $case_insensetive[$i+($j*$adjusted)]){
               my $var=$case_insensetive[$i+($j*$adjusted)];
               print $fh "$var".' ' x ($length+5-length($var));
          }
          $j++;
     }
     print $fh "\n";

     $i++;

}

print $fh "\nAlphabetically with upper case words just in front of lower case words with the
same initial characters\n\n";
$i=0;
while($i<$adjusted){
     my $j=0;
     while($j<$colums){
          if(exists $case_sensetive[$i+($j*$adjusted)]){
               my $var=$case_sensetive[$i+($j*$adjusted)];
               print $fh "$var".' ' x ($length+5-length($var));
          }
          $j++;
     }
     print $fh "\n";

     $i++;

}


print $fh "\nBy frequency, from high to low, (any order for equal frequency)\n\n";
$i=0;
while($i<$adjusted){
     my $j=0;
     while($j<$colums){
          if(exists $by_frequency[$i+($j*$adjusted)]){
               my $var=$by_frequency[$i+($j*$adjusted)];
               print $fh "$var".' ' x ($length+5-length($var));
          }
          $j++;
     }
     print $fh "\n";

     $i++;

}

print $fh "\nBy frequency, with alphabetical order for words with the same frequency\n\n";
$i=0;
while($i<$adjusted){
     my $j=0;
     while($j<$colums){
          if(exists $by_freq_and_case[$i+($j*$adjusted)]){
               my $var=$by_freq_and_case[$i+($j*$adjusted)];
               print $fh "$var".' ' x ($length+5-length($var));
          }
          $j++;
     }
     print $fh "\n";

     $i++;

}


close $fh;
