#!/usr/bin/perl -w
use strict;
my $seq="AGCAGCAGCATGACCTATACCAGGGGGGGGG";
my $gc=($seq=~s/G/G/g+$seq=~s/C/C/g);  
print"$gc\n";