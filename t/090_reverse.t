# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{あ} ne "\xa4\xa2";

use Char::EUCTW qw(reverse);
print "1..2\n";

my $__FILE__ = __FILE__;

@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ');
if ("@_" eq "さしすせそ かきくけこ あいうえお") {
    print qq{ok - 1 \@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \@_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}

$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ');
if ($_ eq "そせすしさこけくきかおえういあ") {
    print qq{ok - 2 \$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 \$_ = reverse('あいうえお', 'かきくけこ', 'さしすせそ') $^X $__FILE__\n};
}

__END__
