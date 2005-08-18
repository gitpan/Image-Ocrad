# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 6;
BEGIN {
  use_ok('Image::Ocrad');
};

#########################

foreach my $i (qw(a b c d e)) {
  my @characters = ocrad("t/$i.pbm");
  print STDERR "\t".join('*', @characters)."\n";
  ok(1);
}
