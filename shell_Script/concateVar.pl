#!/usr/bin/perl -w
use strict;

chomp (my $string1 = <>);
chomp (my $string2 = <>);

print "$string1"."$string2\n";

my $new = $string1 . $string2;
print "$new\n";
