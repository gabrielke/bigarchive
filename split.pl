#!/usr/bin/perl
use strict;
my $filename="fn.txt";
my $content;
my $size=10000;
my @arr;
open(my $fh, '<', $filename) or die "cannot open file $filename";
    $content=<$fh>;
close($fh);

@arr=split('\0',$content);
my $len=scalar @arr;
print "File count: $len \n";
my $c=0;
while (my @chunk = splice (@arr, 0, $size)) {
    open ($fh, '>', "part.$c") or die "cannot open file for writing";
        print $fh join("\0",@chunk);
	$c++;
    close ($fh);
}
