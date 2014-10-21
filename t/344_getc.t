# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW qw(getc);
print "1..2\n";

my $__FILE__ = __FILE__;

open(FILE,">$__FILE__.txt") || die;
print FILE <DATA>;
close(FILE);

open(GETC,"<$__FILE__.txt") || die;
my @getc = ();
while (my $c = getc(GETC)) {
    last if $c =~ /\A[\r\n]\z/;
    push @getc, $c;
}
close(GETC);

my $result = join('', map {"($_)"} @getc);
if ($result eq '(1)(2)(��)(��)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)') {
    print "ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
}

{
    package Getc::Test;

    open(GETC2,"<$__FILE__.txt") || die;
    my @getc = ();
    while (my $c = getc(GETC2)) {
        last if $c =~ /\A[\r\n]\z/;
        push @getc, $c;
    }
    close(GETC2);

    my $result = join('', map {"($_)"} @getc);
    if ($result eq '(1)(2)(��)(��)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)(����)') {
        print "ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ 12�������������������������������������������������������������������� --> $result.\n";
    }
}

unlink("$__FILE__.txt");

__END__
12��������������������������������������������������������������������
