#/usr/bin/env perl

use strict;
use warnings;
use LWP::Simple;

$|=1;

sub main {

    print "Downloading...\n";
    # print get("https://www.facebook.com/");

    my $code = getstore('http://www.gutenberg.org/ebooks/8164.txt.utf-8', "mymanjeeves.txt");

    #my $code = getstore('https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x.png', "gmail.jpg");
    
    # 200 is html success code
    if($code == 200) {
        print "Success\n";
    } else {
        print "Failed\n";
    }
    
    print "Finished\n";
}

main();