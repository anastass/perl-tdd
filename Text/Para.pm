package Text::Para;

use Moose;

has 'columns' => (is => 'rw', isa => 'Int', default => 72);

1;