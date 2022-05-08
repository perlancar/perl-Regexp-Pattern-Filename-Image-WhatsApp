package Regexp::Pattern::Filename::Image::WhatsApp;

use 5.010001;
use strict;
use warnings;
#use utf8;

# AUTHORITY
# DATE
# DIST
# VERSION

our %RE;

$RE{filename_image_whatsapp} = {
    summary => 'Image filename saved by WhatsApp',
    pat => qr/\AIMG-[0-9]{8}-WA[0-9]{4,}\.(?:JPG|jpg)\z/,
    examples => [
        {str=>'foo.jpg', matches=>0, summary=>'No pattern'},
        {str=>'IMG-20210922-WA0001.jpg', matches=>1},
        {str=>'IMG-20210922-WA0001.txt', matches=>0, summary=>'Wrong extension'},
    ],
};

1;
# ABSTRACT: Image filename saved by WhatsApp

=head1 DESCRIPTION


=head1 prepend:SEE ALSO

L<Regexp::Pattern::Filename::Video::WhatsApp>

L<Regexp::Pattern::Filename::Media::WhatsApp>
