#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub groups {

    my $file = 'C:\Users\adenes\Documents\mymanjeeves.txt';
    open(FILE, $file) or die "$file not found.\n";

    while(my $line = <FILE>) {
        if($line =~ /(I..a)(...)/) {
            print "First match: $1; second match: $2\n";
        }
    }

    close(FILE);
}

groups();