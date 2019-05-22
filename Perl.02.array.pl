use warnings;
use strict;

my @x = (2,4,6,8);
#my @y = 2;

print $x[1], "\n";
#print $y[1], "\n";

push @x, 10;
#print $x[4], "\n";

for my $i (0..$#x){
   $x[$i] = $x[$i] * 2;
}

print join("\t", @x);
print "\n";

open REFGENE, "./refGene.txt" or die $!;
my $line = <REFGENE>;
my @fields = split "\t", $line;

print $fields[0], "\n";
print $fields[12], "\n";
print $fields[$#fields], "\n";

my $line2 = <REFGENE>;
my @fields2 = split "\t", $line2;

print $fields2[0], "\n";
print $fields2[12], "\n";
print $fields2[$#fields], "\n";
close REFGENE;
