#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

sub main {

    my $text = 'test.csv';
    #open(INPUT, $text) or die "Cannot open $text\n";
    unless(open(INPUT, $text)) {
        die "Cannot open $text\n";
    }

    # initialize <INPUT> so it does not read HEADER
    <INPUT>;

    my @lines;

    # while(<INPUT>) { chomp } --> \n will be deleted
    while(my $line = <INPUT>) {

        chomp $line;
        # print "'$line'\n";

        # match 0 or more spaces
        my @values = split /\s*,\s*/, $line;
        # print join '|', @values;
        # print Dumper(@values);

        push @lines, $line;
    }

    close(INPUT);

    foreach my $line(@lines) {
        print $line . "\n";
    }

}

main();