# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///g
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

if ($a =~ s/CD|JK|UV/������/g) {
    if ($a eq "AB������EFGHI������LMNOPQRST������WXYZ") {
        print qq{ok - 1 \$a =~ s/CD|JK|UV/������/g ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/CD|JK|UV/������/g ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/CD|JK|UV/������/g ($a) $^X $__FILE__\n};
}

__END__