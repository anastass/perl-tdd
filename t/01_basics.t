use strict;
use warnings;

use Test::More tests => 6;

use_ok('Text::Para');

my $formatter = Text::Para->new();
isa_ok($formatter, 'Text::Para');

can_ok($formatter, 'columns');
is($formatter->columns, 72, 'default column with is 72');

$formatter = Text::Para->new(columns => 10);
is($formatter->columns, 10, 'innitialize column with width to 10');

$formatter->columns(8);
is($formatter->columns, 8, 'innitialize column with width to 8');
