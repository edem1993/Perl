#!/usr/bin/env perl

use strict;
use warnings;
use diagnostics;

use Data::Dumper;

$|=1;

sub csv {

    my $input = 'test.csv';

    #unless executes code if it's false
    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }

    <INPUT>; # if you dont read it off, there will be a header: 'Name,Payment,Date' --> here 'Payment'

    # print $_ | $values[1] --> 2. column
    while(my $line = <INPUT>) {
        my @values = split ',', $line;
        
        # print join '|', @values;

        print Dumper(@values);
    }

    close(INPUT);
    
}

csv();