# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

$a = "アソソ";
if ($a =~ s/(ア.{2})//) {
    if ($1 eq "アソソ") {
        print qq{ok - 1 "アソソ" =~ s/(ア.{2})// \$1=($1) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 "アソソ" =~ s/(ア.{2})// \$1=($1) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 "アソソ" =~ s/(ア.{2})// \$1=($1) $^X $__FILE__\n};
}

__END__
