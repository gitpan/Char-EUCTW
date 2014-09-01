# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..2\n";

my $__FILE__ = __FILE__;

if (Char::EUCTW::ord('あ') == 0xA4A2) {
    print qq{ok - 1 Char::EUCTW::ord('あ') == 0xA4A2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 Char::EUCTW::ord('あ') == 0xA4A2 $^X $__FILE__\n};
}

$_ = 'い';
if (Char::EUCTW::ord == 0xA4A4) {
    print qq{ok - 2 \$_ = 'い'; Char::EUCTW::ord() == 0xA4A4 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = 'い'; Char::EUCTW::ord() == 0xA4A4 $^X $__FILE__\n};
}

__END__
