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

        push @lines, \@values;
    }

    close(INPUT);
    # multi dimensional, [sor][oszlop]
    print $lines[2][2] . "\n";

    foreach my $line(@lines) {
        #print Dumper($line);

        print "\nName: " . $line->[0] . "\n";
        print "Payment: " . $line->[1] . "\n";
        print "Date: " . $line->[2] . "\n";
    }

}

main();