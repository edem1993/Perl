#!/usr/bin/env perl

# Array of Arrays vs Array of Hashes
# enables us to call the data easier (?)
use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main {
	
	my $input = 'C:\Users\adenes\Perl\test.csv';
	
	unless(open(INPUT, $input)) {
		die "Cannot open $input\n";
	}
	
	<INPUT>;
	
	my @data;
	
	while(my $line = <INPUT>) {
		#print $line;
		chomp $line;
		# make values for keys
		my ($name, $payment, $date) = split /\s*,\s*/, $line;
		# makes %values hash with the values called
		my %values = (
			"Name" => $name,
			"Payment" => $payment,
			"Date" => $date,
		);
		
		push @data, \%values;
	}
	
	close(INPUT);
	
	#print Dumper(@data);
	
	#uses [rows] and {"hahs_values"}
	print $data[1]{"Date"} . "\n";
	
	foreach my $data(@data) {
		print $data->{"Payment"} . "\n";
	}
}

main();