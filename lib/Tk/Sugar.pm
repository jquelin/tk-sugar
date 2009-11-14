use 5.008;
use strict;
use warnings;

package Tk::Sugar;
# ABSTRACT: Sugar syntax for Tk

use Sub::Exporter;



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

The following subs are exported by default:

=over 4


=back


The following export groups exist for your convenience:

=over 4

=item :default

This exports all existing subs.

=back



=head1 FUNCTIONS

These you probably don't care about, they're all managed by
L<Sub::Exporter> and its stuff anyway.

=over 4

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