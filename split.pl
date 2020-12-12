#!/usr/bin/perl
use strict;
my $filename="fn.txt";
my $content;
my @arr;
open(my $fh, '<', $filename) or die "cannot open file $filename";
    $content=<$fh>;
close($fh);

@arr=split('\0',$content);
print "File count: $#arr \n";
my $c=0;
while (my @chunk = splice (@arr, 0, 3)) {
    open ($fh, '>', "part.$c") or die "cannot open file for writing";
        print $fh join("\0",@chunk);
	$c++;
    close ($fh);
}
