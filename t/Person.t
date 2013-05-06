use strict;
use warnings;
use Test::More tests => 5;
use_ok('Lib::Person');
my $person = Lib::Person->new;
isa_ok($person, 'Lib::Person');

use constant FIRST_NAME => 'Nelly';
use constant LAST_NAME => 'Greenwood';

$person->FirstName(FIRST_NAME);
is($person->FirstName, FIRST_NAME, 'FirstName is OK');

$person->LastName(LAST_NAME);
is($person->LastName, LAST_NAME, 'LastName is OK');

is($person->full_name(), FIRST_NAME. " " . LAST_NAME, 'full_name() is OK');
