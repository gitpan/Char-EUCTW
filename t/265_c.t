# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use strict;
use Char::EUCTW;
print "1..256\n";

my $__FILE__ = __FILE__;

my $tno = 1;
for my $hexchr (0x00 .. 0xFF) {
    my $char = pack('C',$hexchr);
    if($char =~ /\C/){
        printf qq{ok - $tno "\\x%02X" =~ /\\C/ $^X $__FILE__\n}, $hexchr;
    }
    else{
        printf qq{not ok - $tno "\\x%02X" =~ /\\C/ $^X $__FILE__\n}, $hexchr;
    }
    $tno++;
}

__END__
