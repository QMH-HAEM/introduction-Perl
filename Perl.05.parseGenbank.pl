#!/usr/bin/perl
# This script is incomplete. Your task is to complete the script to achieve the given task.

use strict;
use warnings;

my ($NM, $gene, $NP, $product, $sequence) = '';
my $in_CDS = 0;
my $in_translation = 0;

open GENBANK, "./CALR.gb", or die $!;
while (<GENBANK>){
   chomp;
   my $line = $_;

   if($line =~ m/^VERSION\s+(NM_.*)/){
      $NM = $1;
   }
   elsif($line =~ m/^\s+CDS\s+/){
      $in_CDS = 1;
   }
   if($in_CDS == 1){
      if($line =~ m/\s+\/gene="(.*)"/){
         $gene = $1;
      }
      elsif($line =~ m/\s+\/translation="([A-Z]+)/){
         $in_translation = 1;
         $sequence = $1;
      }
      elsif($in_translation == 1){
         if($line =~ m/\s+(.*)"$/){
            $in_CDS = 0;
            $in_translation = 0;
         }
      }
   }
}
close GENBANK;

open OUT, ">", "CALR.fasta", or die $!;
print OUT ">", $NM, "\n";
print OUT $sequence, "\n";
close OUT;
