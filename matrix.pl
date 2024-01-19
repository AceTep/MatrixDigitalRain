use strict; 
use warnings;
use Tk;
use List::Util qw( shuffle );

my ($rows, $cols) = (30, 60);
my @text = shuffle 'a'..'z', 'A'..'Z', '0'..'9', qw(! @ # $ % ^ & *);
my $n = 0;

my $mWindow = MainWindow->new;
$mWindow->geometry( '+700+250' );
my $canvas = $mWindow->Canvas( -width => $cols * 10, -height => $rows * 20,
  -bg => 'black',
  )->pack;
$canvas->Tk::bind('<ButtonRelease-1>' => sub { $mWindow->destroy } );

my @queue = [ 100, 0, 255, 'A' ]; # [ x, y, color, letter ]
$mWindow->after( 5, \&animate );
MainLoop;

sub animate
  {
  $canvas->delete('all');
  my @new = [ 10 * int rand $cols, 0, 255, $text[++$n % @text] ];
  for ( @queue )
    {
    my $color = $_->[2] == 255 ? '#ffffff' : sprintf '#00%02x00', $_->[2];
    $canvas->createText($_->[0], $_->[1],
      -font => '50x20', -text => $_->[3], -fill => $color );
    $_->[2] == 255 and push @new, [ $_->[0], $_->[1] + 20, 255, $_->[3] ];
    $_->[2] -= 13;
    }
  @queue = grep $_->[2] > 0 && $_->[1] < $rows * 20, @queue, @new;
  $mWindow->after( 69, \&animate );
  }