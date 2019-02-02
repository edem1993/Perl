#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub main {
    my $text = "The code for this device is GP8765..";

    # machine code: 2 alphanumeric, 4 digits /(\w+\d{4})/
    # match 'is GP8765.' but not more /(\w+\d{4}\.)/ or /(is\s\S+?\.)/
    # 2 alphanumeric, min 2, max 6 digits /(\w+\d{2,6})/

    if($text =~ /(\w+\d{2,6})/) {
        print "The code is: $1\n";
    } else {
        print "Not found.\n";
    }
}

main();