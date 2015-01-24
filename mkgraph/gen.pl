#! /usr/bin/perl -w

#mkreq #reqs split link_load topo_gen
#embed #reqs delay

use strict;
use Getopt::Long;

my $i;
my $j;
my $delay = 0;
open(OUT, "> gen.sh");

print OUT "#!/bin/bash\n";

for ($i = 0; $i < 11; $i ++) {
    #print OUT "cd mkgraph\n";
    $j = 10 - $i;
    print OUT "mkdir ../topo-sam4-500-5-10-$i\n";
    print OUT "./mkreq 500 5 10 $j topo-sam4-500-5-10-$i\n";
    #print OUT "cd ..\n";
    #print OUT "./embed 1000 100\n";
}

=comment
for ($i = 0; $i < 11; $i ++) {
    print OUT "cd mkgraph\n";
    print OUT "./mkreq 10 $i 5 5\n";
    print OUT "cd ..\n";
    print OUT "./embed 1000\n";
}
=cut
