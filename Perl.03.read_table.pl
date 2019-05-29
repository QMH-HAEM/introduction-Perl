use warnings;
use strict;

my @x = (2,4,6,8);
my @y = (@x, 10, 12);

my %amino_acid = (
   'Ala' => 'A',
   'Glu' => 'E',
   'Tyr' => 'Y'
);

foreach my $i (sort keys %amino_acid){
   print $i, "\n";
   print $amino_acid{$i}, "\n";
}

print join ("\t", @y);
print "\n";

print $amino_acid{'Ala'}, "\n";

my %snpdb = ();

open REFGENE, "./refGene.txt" or die $!;
while(<REFGENE>){
#   my $line = $_;
   my @fields = split "\t";
   my $transcript = $fields[1];
   my $chr = $fields[2];
   my $start = $fields[4];   # Gene_start
   my $end = $fields[5];     # Gene_end
   my $coordinate = $chr."\t".$start."\t".$end."\t".$transcript;
#   print $coordinate, "\t", $fields[12], "\n";

#   print "Transcript: ", $fields[1], "\n";
#   print "Gene start: ", $fields[4], "\n";

#   if ($fields[12] eq "TP53"){
#      print "Transcript: ", $fields[1], "\n";
#      print "Gene start: ", $fields[4], "\n";
#      print "Gene: ", $fields[12], "\n";
#   }

   $snpdb{$coordinate} = $fields[12];  # Gene_name
}
close REFGENE;

foreach my $coord (sort keys %snpdb){
   my ($snp_chr, $snp_start, $snp_end, $snp_transcript) = split "\t", $coord;
   if ($snp_chr eq "chr9"){
      if (($snp_start <= 5073770) && ($snp_end >= 5073770)){
         print "The site $snp_chr:5073770 is in $snpdb{$coord}.\n";
      }
   }
}
