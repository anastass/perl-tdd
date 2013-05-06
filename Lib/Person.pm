package Lib::Person;
use Moose;

has 'FirstName' => (is => 'rw', isa => 'Str');
has 'LastName' => (is => 'rw', isa => 'Str');


sub full_name {
    my ($FirstName, $LastName) = @_[1..2];
    return "$FirstName $LastName";
}

1;