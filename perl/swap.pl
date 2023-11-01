#!/usr/bin/perl -w
use strict;

my $a = "a";
my $b = "b";

($a, $b) = ($b, $a);
print "\$a = $a\n";
print "\$b = $b\n";

