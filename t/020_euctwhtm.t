# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

$_ = '';

# Substitution replacement not terminated
# ���ִ������ִ�ʸ���󤬽�λ���ʤ���
my $eval = eval { s/ɽ/΢/; };
if ($@) {
    print "not ok - 1 eval { s/HYO/URA/; }\n";
}
else {
    print "ok - 1 eval { s/HYO/URA/; }\n";
}

__END__

Shift-JIS�ƥ����Ȥ�����������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
