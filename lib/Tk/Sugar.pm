use 5.008;
use strict;
use warnings;

package Tk::Sugar;
# ABSTRACT: Sugar syntax for Tk

use Sub::Exporter -setup => {
    exports => [ qw{
        top bottom left right
        fillx filly fill2 xfillx xfilly xfill2
    } ],
    groups  => {
        fill    => [ qw{ fillx filly fill2 xfillx xfilly xfill2 } ],
        side    => [ qw{ top bottom left right } ],
        pack    => [ qw{ -fill -side } ],
        default => [ qw{ -pack } ],
    }
};

## no critic (ProhibitSubroutinePrototypes)

# -- pack options

# pack sides
sub top    () { return ( -side => 'top'    ); }
sub bottom () { return ( -side => 'bottom' ); }
sub left   () { return ( -side => 'left'   ); }
sub right  () { return ( -side => 'right'  ); }

# pack fill / expand
sub fillx  () { return ( -fill => 'x'    ); }
sub filly  () { return ( -fill => 'y'    ); }
sub fill2  () { return ( -fill => 'both' ); }
sub xfillx () { return ( -expand => 1, -fill => 'x'    ); }
sub xfilly () { return ( -expand => 1, -fill => 'y'    ); }
sub xfill2 () { return ( -expand => 1, -fill => 'both' ); }


1;
__END__

=head1 SYNOPSIS

    use Tk::Sugar;

    $widget->pack( top, xfill2, pad20 );
    # equivalent to those pack options:
    #     -side   => 'top'
    #     -expand => 1
    #     -fill   => 'both'
    #     -padx   => 20
    #     -pady   => 20

    $widget->configure( enabled );
    # equivalent to: -state => 'enabled'

=head1 DESCRIPTION

L<Tk> is a great graphical toolkit to write desktop applications.
However, one can get bothered with the constant typing of quotes and
options. L<Tk::Sugar> provides handy subs for common options used when
programming Tk.

Benefits are obvious:

=over 4

=item * Reduced typing.

The constant need to type C<< => >> and C<''> is fine for one-off cases,
but the instant you start using Tk it starts to get annoying.

=item * More compact statements.

Reduces much of the redundant typing in most cases, which makes your
life easier, and makes it take up less visual space, which makes it
faster to read.

=item * No string worries.

Strings are often problematic, since they aren't checked at compile-
time. Sometimes it makes spotting an error a difficult task. Using this
alleviates that worry.

=back



=head1 EXPORTS

This module is using L<Sub::Exporter> underneath, so you can use all its
shenanigans to change the export names.


=head2 Exported subs

Look below for the list of available subs.


=head3 Pack options

Traditional packer sides (available as C<:side> export group):

=over 4

=item * top - equivalent to C<< ( -side => 'top' ) >>

=item * bottom - ditto

=item * left - ditto

=item * right - ditto

=back

Packer expand and filling (available as C<:fill> export group):

=over 4

=item * fillx - equivalent to C<< ( -fill => 'x' ) >>

=item * filly - equivalent to C<< ( -fill => 'y' ) >>

=item * fill2 - equivalent to C<< ( -fill => 'both' ) >>

=item * xfillx - same as C<fillx> with C<< ( -expand => 1 ) >>

=item * xfilly - ditto for C<filly>

=item * xfill2 - ditto for C<fill2>

=back



=head2 Export groups

Beside the individual groups outlined above, the following export groups
exist for your convenience:

=over 4

=item :default

This exports all existing subs.

=item :pack

This exports all subs related to L<Tk::pack> options. Same as C<:side>
and C<:fill>.

=back




=head1 SEE ALSO

You can look for information on this module at:

=over 4

=item * Search CPAN

L<http://search.cpan.org/dist/Tk-Sugar/>

=item * Open / report bugs

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Tk-Sugar>

=item * Git repository

L<http://github.com/jquelin/tk-sugar.git>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Tk-Sugar>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Tk-Sugar>

=back