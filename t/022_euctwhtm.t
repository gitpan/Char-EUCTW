# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

# ���顼�ˤϤʤ�ʤ�����ʸ����������ʣ���
if (lc('����������') eq '����������') {
    print "ok - 1 lc('����������') eq '����������'\n";
}
else {
    print "not ok - 1 lc('����������') eq '����������'\n";
}

__END__

Char::EUCTW.pm �ν�����̤��ʲ��ˤʤ뤳�Ȥ���Ԥ��Ƥ���

if (lc('����������') eq '����������') {

Shift-JIS�ƥ����Ȥ�����������
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
