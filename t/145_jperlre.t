# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('����e' =~ /(��[��-��]e)/) {
    if ("$1" eq "����e") {
        print "ok - 1 $^X $__FILE__ ('����e' =~ /��[��-��]e/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('����e' =~ /��[��-��]e/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('����e' =~ /��[��-��]e/).\n";
}

__END__
