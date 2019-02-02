use strict;
use warnings;
use LWP::Simple;

$|=1;

sub picDownload {

    print "Program started!\n";
    my $picture = getstore('https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-734494.jpg', "astronaut.jpg");
    
    if($picture == 200) {
        print "Successfully downloaded!\n";
    } else {
        print "Failed to download the picture.\n";
    }
    print "Program finished.\n";
}

picDownload();