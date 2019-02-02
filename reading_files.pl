#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub main {

    my $file = 'C:\Users\adenes\Documents\mymanjeeves.txt';
    open(INPUT, $file) or die "Can't open $file.\n";

    while( my $line = <INPUT> ) {
        #print $line;
        if($line =~ /I.hav.*/) {
            print $line;
        }
    }

    close(INPUT);
}

main();