#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub main {

    my @array = (
        'C:\Users\adenes\Perl\gmail.jpg',
        'C:\Users\adenes\Perl\facebook.htmls',
        'C:\Users\adenes\Perl\dwnld_images.pl',
    );

    foreach my $file(@array) {
        if( -f $file) {
            print "$file: file exists\n";
        } else {
            print "$file: file doesn't exists\n";
        }
    }
    
}

main();