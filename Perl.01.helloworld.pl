use strict;
use warnings;

# print "Hello World!\n";
# scalar
my $var1 = "Hello 'World'!";
print $var1, "\n";

my $var2 = "NPM2";
my $var3 = "FLT3";

my $var4 = $var2.$var3;
print $var4, "\n";

if ($var2 eq "NPM1"){
   print "NPM1 is present.\n";
}
elsif ($var2 eq "NPM2"){
   print "NPM2 is present.\n";
}
else{
   print "NPM1 and NPM2 are not present.\n";
}

for (my $i=1; $i<=10; $i=$i+2){
   print $i, "\n";
}

# Print fibonacci sequence, allowing pre-specified number of the sequence
1 1 2 3 5 8 13 21 34 55
