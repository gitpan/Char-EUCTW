# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('������������' =~ /(����{4,5}����)/) {
    print "not ok - 1 $^X $__FILE__ not ('������������' =~ /����{4,5}����/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('������������' =~ /����{4,5}����/).\n";
}

__END__
