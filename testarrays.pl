use strict;
use warnings;

use Data::Dumper;

my @animals = ('dog', 'cat', 'rabbit');
my @fruits = ('apple', 'banana', 'orange');

my $fruits_referenc = \@fruits;

foreach my $index($fruits_referenc) {
    #print "First index: " . $fruits_referenc->[0] . "\n";
    #print "Second index: " . $fruits_referenc->[1] . "\n";
    #print "Third index: " . $fruits_referenc->[2] . "\n";
}

my @values;

# \array of reference!!!
push @values, \@animals;
push @values, \@fruits;

#print Dumper(@values);

my $csv = 'test.csv';

unless(open(INPUT, $csv)) {
    die "Cannot open $csv.\n";
}

<INPUT>;
my @newarray;

while(my $line = <INPUT>) {
    #print $line;
    chomp $line;
    my @splittedarray = split /\s*,\s*/, $line;
    #print join ";", @splittedarray;
    #print Dumper(@splittedarray);

    push @newarray, \@splittedarray;
    #print Dumper(@newarray);
    
}

close(INPUT);
# @newarray printed as $newarray[][] ???
print "1st row 1st item: " . $newarray[0][0] . "\n";
print "1st row 2nd item: " . $newarray[0][1] . "\n";
print "1st row 3rd item: " . $newarray[0][2] . "\n";
print ".\n";
print ".\n";
print ".\n";
print "2nd row: " . $newarray[1][0] . "\n";
print "3rd row: " . $newarray[2][0] . "\n";

foreach my $stuff(@newarray) {
    #print $stuff;
    #print Dumper($stuff->[2]);
    print "\nName column: " . $stuff->[0] . "\n";
    print "Payment column: " . $stuff->[1] . "\n";
    print "Date column: " . $stuff->[2] . "\n";

}