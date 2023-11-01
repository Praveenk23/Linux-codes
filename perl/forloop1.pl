#!/usr/bin/perl -w
use strict;

my $i;
for ($i = $#ARGV; $i >= 0; $i--) {
	print "$ARGV[$i]\n";
	sleep(1);
}
