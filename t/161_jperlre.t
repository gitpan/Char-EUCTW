# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('��-��' =~ /(��\s��)/) {
    print "not ok - 1 $^X $__FILE__ not ('��-��' =~ /��\\s��/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('��-��' =~ /��\\s��/).\n";
}

__END__