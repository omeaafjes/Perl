#/usr/bin/perl

use Data::Dumper;

my $intref;
my $int;

open my $fh,'<',"config_interfaces";

 while (<$fh>){
   if ($_ =~ /interface (.*)/){
     $int=$1;
   }
  unless ($_ eq ""){
    push @{$intref->{$int}},$_;
  }
 }

 
#print Dumper($intref);

open my $fh2,'<',"interface_simple";
while (<$fh2>){
 if (/interface (.*)/){
  print @{$intref->{$1}};
 }
}


