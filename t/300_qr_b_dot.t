# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use strict;
use Char::EUCTW;
print "1..2\n";

my $__FILE__ = __FILE__;

if ('あ' =~ qr/(.)/b) {
    if (length($1) == 1) {
        print qq{ok - 1 'あ'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 'あ'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 'あ'=~qr/(.)/b; length(\$1)==1 $^X $__FILE__\n};
}

if ('あ' =~ qr'(.)'b) {
    if (length($1) == 1) {
        print qq{ok - 2 'あ'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 2 'あ'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 2 'あ'=~qr'(.)'b; length(\$1)==1 $^X $__FILE__\n};
}

__END__

