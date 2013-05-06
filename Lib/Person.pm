package Lib::Person;
use Moose;

has 'FirstName' => (is => 'rw', isa => 'Str');
has 'LastName' => (is => 'rw', isa => 'Str');


sub full_name {
    my $self = shift;
    return $self->FirstName . " " . $self->LastName;
}

1;