# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "������";
if ($a =~ s/(��.{2})//) {
    if ($1 eq "������") {
        print qq{ok - 1 "������" =~ s/(��.{2})// \$1=($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 "������" =~ s/(��.{2})// \$1=($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "������" =~ s/(��.{2})// \$1=($1) $^X $__FILE__\n};
}

__END__
