use warnings;
use strict;

my $string = 'abc123@ha.org.hk';
my $string2 = 'abcdef@gmail.com';

if ($string =~ m/^(\w+)@[a-z]+\.(com|org)$/){
   print "This pattern matches.\n";
   print "The username is $1.", "\n";
   print "The email domain is $2.", "\n";
}
else {
   print "This pattern does not match.\n";
}

if ($string2 =~ m/^(\w+)@[a-z]+\.(com|org)$/){
   print "This pattern matches.\n";
   print "The username is $1.", "\n";
   print "The email domain is $2.", "\n";
}
else {
   print "This pattern does not match.\n";
}
