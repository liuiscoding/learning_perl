#!/usr/bin/perl -w
use strict;
open FA,"$ARGV[0]";
$/=">";<FA>;
while(<FA>){
	chomp;
	my ($id,$seq)=(split/\n/,$_,2)[0,1];
	$seq=~s/\n//g;
	# $seq=~s/(\w{70})/$1\n/g;
	$seq=~s/(\w{$ARGV[1]})/$1\n/g;  #命令行操作
	print">$id\n$seq";
}
close FA;
