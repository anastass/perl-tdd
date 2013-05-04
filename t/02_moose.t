use strict;
use warnings;

use Test::More tests => 17;

use_ok('Point');

my $value = 1;
my $point = Point->new(x => $value, y => $value);
can_ok($point, 'x');
can_ok($point, 'y');
is($point->x, $value, 'x coordiante is OK');
is($point->y, $value, 'y coordiante is OK');

$point->clear();
is($point->x, 0, 'x coordiante is cleared');
is($point->y, 0, 'y coordiante is cleared');

use_ok('Point3D');
$value = 2;
my $point3D = Point3D->new(x => $value, y => $value, z => $value);
can_ok($point3D, 'x');
can_ok($point3D, 'y');
can_ok($point3D, 'z');
is($point3D->x, $value, 'x coordiante is OK');
is($point3D->y, $value, 'y coordiante is OK');
is($point3D->z, $value, 'z coordiante is OK');

$point3D->clear();
is($point3D->x, 0, 'x coordiante is cleared');
is($point3D->y, 0, 'y coordiante is cleared');
is($point3D->z, 0, 'z coordiante is cleared');
