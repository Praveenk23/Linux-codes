#!/usr/bin/perl
use warnings;
use strict;
# use of my for making local

$c = 5;
print "Vlaue: $c\n";
{

	$c = 6;
	print "Value of a is $c\n";
}
print "Value of a outside of the block $c\n";

