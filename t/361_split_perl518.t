# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..2\n";

my $__FILE__ = __FILE__;

my $input = '  My name is Yamada Taro';

my $space = ' ';
my $a = join '_', split $space, $input;
if ($a eq 'My_name_is_Yamada_Taro') {
    print qq{ok - 1 $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 $^X $__FILE__\n};
}

my $b = join '_', split ' ', $input;
if ($b eq 'My_name_is_Yamada_Taro') {
    print qq{ok - 2 $^X $__FILE__\n};
}
else {
    print qq{not ok - 2 $^X $__FILE__\n};
}

__END__
http://d.hatena.ne.jp/syohex/20130613/1371103504

�ѹ���

split���������˶����Ĥ�ʸ�����ƥ���Ϳ�����Ȥ���

�����Ĥ��������줿�ѿ�����ꤷ���Ȥ��ε�ư�����ޤǰ�ä�

�����Τ�Ʊ���ˤʤä��褦�Ǥ���

Perl 5.16.3�Ǥη��
  a = __My_name_is_Yamada_Taro
  b = My_name_is_Yamada_Taro

Perl 5.18.0�Ǥη��
  a = My_name_is_Yamada_Taro
  b = My_name_is_Yamada_Taro

�ष�� 5.18.0������Ϥ���ʵ�ư���ä��Τ��Ȥ��������Ǥ�����

����ΤäƤ����������ɤ������Ǥ���
