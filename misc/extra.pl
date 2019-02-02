#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;

$|=1;

sub testCSV {

    my $input = 'C:\Users\adenes\Perl\test.csv';
    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }

    #skip headline
    my $headings = <INPUT>;
    chomp $headings;
    my @headings = split /\s*,\s*/, $headings;

    my @data;

    LINE: while(my $line = <INPUT>) {
        chomp $line;

        #skip spaces, before and after
        $line =~ s/^\s*|\s*$//g;

        #skip ?, $, approx.
        $line =~ s/\$|approx.\s*|\?//g;

        #skip blank lines
        $line =~ /\S+/ or next;
        #skip spaces inside the line
        #put variables in (name payment date) fields
        my @values = split /\s*,\s*/, $line;
        my ($name, $payment, $date) = @values;
        
        # skip lines with < 3 value in it
        if(scalar(@values) < 3) {
            next;
        }

        # iterate through the values array and skip line if one of its value is 0/empty
        foreach my $value(@values) {
            if(length($value) == 0) {
                next LINE;
            }
        }

        my %values_hash;

        for(my $i=0; $i<@headings; $i++) {
            my $heading = $headings[$i];
            my $value = $values[$i];

            $values_hash{$heading} = $value;
        }
        push @data, \%values_hash;
        
    }

    close(INPUT);
    
    #print Dumper(@data);

    my $totalPayment = 0;
    for my $value(@data) {
        $totalPayment += $value->{"Payment"};
    }
    
    print "Total payment: $totalPayment\n";
}

testCSV();