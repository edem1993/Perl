#!/usr/bin/env perl

use strict;
use warnings;

$|=1;

sub main {
    # array of my.email, loop through, display them
    # 1 betü, 1 @ 1 betü 1 . 1 betü -> a@b.c

    my @emails = (
        'denesa@t-systems.com',
        'denesa1993@gmail.com',
        'adamx4244@gmail.com',
        'hello',
        '@lljk.com',
        'jklkj235dwa@somewhere77.com',
        'ljksl@7788.',
        'annamaria.annamari@gmail.com',
    ); 

    foreach my $email(@emails) {
        #print "$email\n";
        if($email =~ /(\w+)\@(\w.+)\.(\w+)/){
            print "Valid: $email\n";
        } else {
            print "Invalid: $email\n";
        }
    }
}

main();