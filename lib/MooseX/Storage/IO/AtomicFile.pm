
package MooseX::Storage::IO::AtomicFile;
use Moose::Role;

use MooseX::Storage::Engine::IO::AtomicFile;

with 'MooseX::Storage::IO::File';

sub store {
    my ( $self, $filename ) = @_;
    MooseX::Storage::Engine::IO::AtomicFile->new( file => $filename )->store( $self->freeze() );
}

1;

__END__

=pod

=head1 NAME

MooseX::Storage::IO::AtomicFile

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item B<load ($filename)>

=item B<store ($filename)>

=back

=head2 Introspection

=over 4

=item B<meta>

=back

=head1 BUGS

All complex software has bugs lurking in it, and this module is no 
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Chris Prather E<lt>chris.prather@iinteractive.comE<gt>

Stevan Little E<lt>stevan.little@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

