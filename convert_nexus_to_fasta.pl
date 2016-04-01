#!/usr/bin/perl
use strict;
use warnings;

open I, "<", $ARGV[0];
open O, ">", $ARGV[1];

while (<I>) {
	last if /matrix/i;
}

while (<I>) {
	last if /;/;
	my @a = split /\t/;
	print O ">$a[0]\n$a[1]";
}

close I;
close O;
