#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

sub main {

    my $input = 'test.csv';
    #open(INPUT, $text) or die "Cannot open $text\n";
    unless(open(INPUT, $input)) {
        die "Cannot open $input\n";
    }

    # initialize <INPUT> so it does not read HEADER
    <INPUT>;

    my @data;

    # while(<INPUT>) { chomp } --> \n will be deleted
    while(my $line = <INPUT>) {

        chomp $line;
        # print "'$line'\n";

        # match 0 or more spaces
        my ($name, $payment, $date) = split /\s*,\s*/, $line;

        my %values = (
            "Name" => $name,
            "Payment" => $payment,
            "Date" => $date,
        );

        push @data, \%values;
    }

    close(INPUT);

    foreach my $data(@data) {
        print $data->{"Payment"} . "\n";

    }

    print "Descartes: " . $data[3]{"Name"};
}

main();