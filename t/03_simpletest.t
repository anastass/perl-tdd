use Test::Simple tests => 3;

use Text::Para;
my $formatter = Text::Para->new;        # create an object
ok( defined $formatter );               # check that we got something
ok( $formatter->isa('Text::Para') );    # and it's the right class

ok( 1 + 1 == 2 );
#ok( 2 + 2 == 5 );   # this test fails
