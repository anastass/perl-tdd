package Text::Para;

use Moose;

has 'columns' => (is => 'rw', isa => 'Int', default => 72);

sub format {
    my($self, $text) = @_;
    
    $text =~ s/\A\s+//;
    $text =~ s/\s+\Z//;
    return $text;
}

1;