#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    # hash key-value pair
    # hashes will not remember your key order!!
    my %months = (
        "Jan" => 1,
        "Dec" => 12,
        "Mar" => 3,
        "Apr" => 6,
    );

    # $ -> because we want 1 spec. value
    print $months{"Jan"} . "\n";

    my %days = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
    );

    print $days{1} . "\n";

    my @months = keys %months;

    for my $month(@months) {
        my $value = $months{$month};

        print "$month: $value\n";
    }

    # to declare multiple variables my ($var1, $var2)
    while( my ($key,$value) = each %days ) {
        print "$key: $value\n";
    }
}

main();