#!perl -w 
my %hash;
open(IN,$ARGV[0]) or die "";
while (<IN>){
        chomp;
        @tp = split(/\n/,$_);
        foreach $i(0..$#tp){
                $n = $tp[$i];
                @da = split (/\s+/,$n);
                if(!exists($hash{$da[-1]})){
                                print "###\n";                                  
                                }
                        print "$n\n";
                        $hash{$da[-1]} += 1;
                        }
        
        }
close IN;
********************************************************************************************first:add lable 
***********************************************************************************************second:sort position and extract
#!perl -w
my %hash;
open(IN,$ARGV[0]) or die "";
$/ = '###';
<IN>;
while (<IN>){
        chomp;
        my ($na,$nb) = split (/\s+/,$_,2);
        @ka = split (/\n/,$nb);
        $n = @ka;
        if ($n > '1'){
my      @pla = sort  {$a->[1] <=> $b->[1]}@ka;
my      @plb = sort  {$a->[2] <=> $b->[2]}@ka;
        my $first_line = $pla[0];
        my $last_line  = $plb[-1];
        @ds = split (/\s+/,$first_line);
        @db = split (/\s+/,$last_line);
        print "$ds[0]\t$ds[1]\t$db[2]\t$db[3]\n";
        }else{
                print "@ka\n";
                }
        }
close IN;
