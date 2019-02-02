#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub groups {

    # \d digit
    # \s space
    # \S non-space
    # \w alphanumeric +_
    # \W non-word

    # * matches zero or more of the preceding character; e.g.
    # d* matches zero or more d's 7* zero or more 7's, etc.
    # .* matches zero or more of any character, as many as possible
    # .*? matches zero or more of any character, as few as possible
    
    my $text = 'Iam117yearsold_tomorrow.';

    if($text =~ /(\w*)/){
        print "Matched: '$1'\n";
    }

}

groups();