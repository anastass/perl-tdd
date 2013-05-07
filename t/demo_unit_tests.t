use strict;
use warnings;

use Test::More tests => 16;

use_ok('Text::Para');

my $formatter = Text::Para->new;
isa_ok($formatter, 'Text::Para');

can_ok($formatter, 'columns');

$formatter = Text::Para->new(columns => 10);
is($formatter->columns, 10, 'initialised column width to 10');

$formatter->columns(8);
is($formatter->columns, 8, 'successfully set column width to 8');

is(
    $formatter->format(""),
    "",
    'empty string formatted correctly'
);

is(
    $formatter->format('one two'),
    'one two',
    'short line formatted correctly'
);

is(
    $formatter->format(" one"),
    "one",
    'leading space was stripped'
);

is(
    $formatter->format(" one "),
    "one",
    'trailing space was stripped too'
);

is(
    $formatter->format("one two"),
    "one two",
    'extra internal whitespace handled correctly'
);

is(
    $formatter->format('one two three'),
    "one two\nthree",
    'third word was wrapped correctly'
);

is(
    $formatter->format('one two three go'),
    "one two\nthree go",
    'packing to exactly the end of the line worked'
);

is(
    $formatter->format('one two three go!'),
    "one two\nthree\ngo!",
    'packing to just past the end of the line worked'
);

is(
    $formatter->format('one two three fourfivesix'),
    "one two\nthree\nfourfiv-\nesix",
    'long word was broken correctly'
);

is(
    $formatter->format("one two three\n\nfour five six"),
    "one two\nthree\n\nfour\nfive six",
    'paragraphs handled correctly'
);

is(
    $formatter->format("one two\n three\n \nfour five six"),
    "one two\nthree\n\nfour\nfive six",
    'whitespace between paragraphs handled correctly'
);
