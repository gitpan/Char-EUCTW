# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

$_ = '';

# Search pattern not terminated
# �֥������ѥ����󤬽�λ���ʤ���
eval { /ɽ/ };
if ($@) {
    print "not ok - 1 eval { /HYO/ }\n";
}
else {
    print "ok - 1 eval { /HYO/ }\n";
}

__END__

Shift-JIS�ƥ����Ȥ�����������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
