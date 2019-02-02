#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my %adam = (
        "Name" => "Adam",
        "Age" => 25,
        "Gender" => "male",
        "Job" => "Network Engineer",
    );

    print $adam{"Age"} . "\n";

    #my @data;
    #push @data, \%adam;
    #print Dumper(@data); 

    my @adam = keys %adam;
    
    for my $key(@adam) {
        my $value = $adam{$key};
        #print $key;
        #print $value;
        print "$key: $value\n";
    }
    
    while( my ($key,$value) = each %adam ) {
        print "\n----------------\n";
        print "$key: $value\n";
    }
}

main();