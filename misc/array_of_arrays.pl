#!/usr/bin/env perl

# Array of Arrays vs Array of Hashes
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
	
	my @values;
	
	while(my $line = <INPUT>) {
		#print $line;
		chomp $line;
		my @array = split /\s*,\s*/, $line;
		#print @array;
		
		push @values, \@array;
	}
	
	#print Dumper(@values);
	#print $values[0][1] . "\n"; # -> bad bcuz gets only 1 data
	
	foreach my $value(@values) {
		print $value->[0] . "\n";
		print $value->[1] . "\n";
		print $value->[2] . "\n";
	}
}

main();