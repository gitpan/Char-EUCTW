# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

local $^W = 0;
if (1) {
    print "ok - 1 # SKIP $^X $__FILE__ not ('い' =~ /$い/).\n";
    exit;
}

if ('い' =~ /($い)/) {
    print "not ok - 1 $^X $__FILE__ not ('い' =~ /$い/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('い' =~ /$い/).\n";
}

__END__
