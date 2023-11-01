#!/usr/bin/perl -w

use strict;

if (defined $ARGV[0]) {
	my $a = system("$ARGV[0]");
	if ($a eq 0){
		print "exists\n";
	} else {
		print "Not exists\n";
	}
}
else {
	print "Error: provide arg\n";
	exit 127;
}
