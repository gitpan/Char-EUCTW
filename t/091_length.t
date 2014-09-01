# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..2\n";

my $__FILE__ = __FILE__;

if (length('あいうえお') == 10) {
    print qq{ok - 1 length('あいうえお') == 10 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 length('あいうえお') == 10 $^X $__FILE__\n};
}

if (Char::EUCTW::length('あいうえお') == 5) {
    print qq{ok - 2 Char::EUCTW::length('あいうえお') == 5 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 Char::EUCTW::length('あいうえお') == 5 $^X $__FILE__\n};
}

__END__
