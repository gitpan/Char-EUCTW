# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

# �ޥå����ʤ��Ϥ��ʤΤ˥ޥå�����ʣ���
if ("�䥫��" =~ /�ݥå�/) {
    print qq<not ok - 1 "YAKAN" =~ /POTTO/\n>;
}
else {
    print qq<ok - 1 "YAKAN" =~ /POTTO/\n>;
}

__END__

Shift-JIS�ƥ����Ȥ�����������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
