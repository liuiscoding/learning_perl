#!/usr/bin/perl -w
use strict;

sub qfw{
	# my $number=12345678912.12;
	my $number=$ARGV[0];  #从键盘输入数字
	1 while $number=~s/(-?\d+)(\d\d\d)/$1,$2/;
	print"$number\n";
}
&qfw;