# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

if ($] < 5.006) {
    print qq{ok - 1 # SKIP $^X $] $__FILE__\n};
    exit;
}

open(FILE,">$__FILE__.txt") || die;
print FILE <DATA>;
close(FILE);
open(my $fh,"<$__FILE__.txt") || die;

my @getc = ();
while (my $c = Char::EUCTW::getc($fh)) {
    last if $c =~ /\A[\r\n]\z/;
    push @getc, $c;
}
close($fh);
unlink("$__FILE__.txt");

my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(��)(��)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)') {
    print "ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}

__END__
12��������������������������������������������������������������������
