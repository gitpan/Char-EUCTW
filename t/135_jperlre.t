# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('ああいうえ' =~ /(あいう)$/) {
    print "not ok - 1 $^X $__FILE__ not ('ああいうえ' =~ /あいう\$/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('ああいうえ' =~ /あいう\$/).\n";
}

__END__
