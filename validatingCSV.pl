#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    # open csv file
    my $csv = 'test.csv';
    unless(open(CSV, $csv)) {
        die "Cannot open $csv...\n";
    }

    #call <CSV> to not read header
    <CSV>;

    my @datas;

    # read csv line by line
    LINE: while(my $line = <CSV>) {
        # match nonspace 1 or more, OR move to the next line!
        $line =~ /\S+/ or next;

        # clear \n-s
        chomp $line;

        # declare values for hash
        my @values = split /\s*,\s*/, $line;

        # scalar == single value -> forcing value to be a scalar
        if(scalar(@values) < 3){
            print "Invalid line: $line\n";
            next LINE;
        }

        for my $value(@values) {
            # not == but 'eq'
            if($value eq '') {
                print "Invalid line: $line\n";
                next LINE;
            }
        }

        my ($name, $payment, $date) = @values;
        # make hash
        my %hash = (
            "Name" => $name,
            "Payment" => $payment,
            "Date" => $date,
        );

        # declare the array and push in the hash reference
        push @datas, \%hash;
    }

    # close csv
    close(CSV);

    # iterate through the key value pairs
    foreach my $data(@datas) {
        print $data->{"Payment"} . "\n";
    }

    # calling through array/hash []{} combo
    print "Descartes: " . $datas[3]{"Name"};
}

main();