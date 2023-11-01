#!/usr/bin/perl -w
use strict;
my @a = `pwd`;

my @output = split /\//, "@a";
#my ($d, $e, $f) = split / /, "@a";
#print "$d\n";
#print "$e\n";
#print "$f\n";

print "@output";
