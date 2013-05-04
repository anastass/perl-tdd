# See: http://search.cpan.org/dist/Test-Simple/lib/Test/Tutorial.pod
# See also:
#   http://search.cpan.org/~mschwern/Test-Simple-0.98/lib/Test/Simple.pm
#   http://www.wgz.org/chromatic/perl/IntroTestMore.pdf

# to see full output use -v
#   prove -v t\03_simpletest.t
use Test::Simple tests => 5;

ok( 1 + 1 == 2 );
#ok( 2 + 2 == 5 );   # this test fails

use Date::ICal;

my $ical = Date::ICal->new;         # create an object
ok( defined $ical );                # check that we got something
ok( $ical->isa('Date::ICal') );     # and it's the right class

#above test a descriptive name as a second parameter
ok( defined $ical, 'new() returned something' );
ok( $ical->isa('Date::ICal'), "  and it's the right class" );