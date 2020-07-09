use strict;
use Cwd;
use File::Copy;
my $dir = getcwd;

$dir =~s/^.+\///;
my $i = 0;

foreach my $file (grep(-f,<*.txt>))
{
    move($file, $dir.$i.'.txt');
    $i++;
}