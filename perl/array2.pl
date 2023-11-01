#!/usr/bin/perl -w
use strict;

my @newarr = (uc @ARGV[0],lc @ARGV[1], uc @ARGV[2], lc @ARGV[3]);
print "(@newarr)";
