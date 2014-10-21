# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

my @getc = ();
while (my $c = Char::EUCTW::getc(DATA)) {
    last if $c =~ /\A[\r\n]\z/;
    push @getc, $c;
}
my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(��)(��)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)') {
    print "ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}

__END__
12��������������������������������������������������������������������
