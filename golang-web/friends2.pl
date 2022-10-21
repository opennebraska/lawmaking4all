#! env perl
use Modern::Perl;
use Text::CSV_XS;
no warnings "experimental";
no warnings "uninitialized";

my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });
open my $fh, "<:encoding(utf8)", "friends.csv" or die $!;
<$fh>;  # skip header
say "% agree,agree,disagree,name,name";
while (my $row = $csv->getline($fh)) {
  my $perc = $row->[0] / ($row->[0] + $row->[1]);
  # next unless ($perc >= .9);
  my $percf = sprintf("%.1f", $perc * 100);
  say "$percf," . join ",", @$row;
}

