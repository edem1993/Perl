#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my %foods = (
        "mice" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds",
    );

    # We can define an array of variables like this:
    my ($one, $two, $three) = (13, 21, 38);
    print "The value of \$two is $two\n";

    # each -> returns an array! == my @foods = keys %foods...
    while(my ($key,$value) = each %foods) {
        print "$key: $value\n";
    }

    #my @animals = keys %foods; # --> same as foreach my $key(keys %foods)
    #print Dumper(@animals);

    foreach my $key(keys %foods) {
        my $value = $foods{$key};

        print "$key = $value\n";
    }
}

main();