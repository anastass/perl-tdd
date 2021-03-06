package Text::Para;

use Moose;

has 'columns' => (is => 'rw', isa => 'Int', default => 72);

sub format {
    my($self, $text) = @_;
    
    return join "\n\n",
        map { $self->format_para($_) }
        split /\n(?:[ \t]*\n)+/, $text;
}

sub format_para {
    my($self, $text) = @_;

    my @words = $text =~ m/(\S+)/g;
    my $para = '';
    my $cols_left = $self->columns;

    while(@words) {
        my $word = shift @words;
        my $word_length = length $word;
        if($cols_left > $word_length) {
            $para .= ' ' if $cols_left < $self->columns;
            $para .= $word;
            $cols_left -= $word_length;
        }
        elsif($word_length <= $self->columns) {
            $para .= "\n$word";
            $cols_left = $self->columns - $word_length;
        }
        else {
            my $part = substr $word, 0, $self->columns - 1, '';
            $para .= "\n$part-\n";
            $cols_left = $self->columns;
            unshift @words, $word if length $word;
        }
    }
    
    return $para;
}
__PACKAGE__->meta->make_immutable;
no Moose;

1;