#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub compare {

    my $file = 'C:\Users\adenes\Documents\mymanjeeves.txt';
    open(INPUT, $file) or die "Can't open $file.\n";

    my $db = 'C:\Users\adenes\Desktop\output.txt';
    open(OUTPUT, '>', $db) or die "Can't create $db.\n";

    while( my $line = <INPUT> ) {
        if($line =~ /\begg\b/) {
            $line =~ s/hen/DINOSAUR/ig;
            print OUTPUT $line;
            print $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}

compare();