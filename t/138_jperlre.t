# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいう' =~ /(あ.う)/) {
    if ("$1" eq "あいう") {
        print "ok - 1 $^X $__FILE__ ('あいう' =~ /あ.う/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あ.う/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいう' =~ /あ.う/).\n";
}

__END__
