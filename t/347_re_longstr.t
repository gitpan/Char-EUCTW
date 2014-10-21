# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..1\n";

my $__FILE__ = __FILE__;

my $anchor1 = q{\G(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[\x00-\xFF])*?};
my $anchor2 = q{\G(?(?!.{32766})(?:[\x81-\x9F\xE0-\xFC][\x00-\xFF]|[\x00-\xFF])*?|(?(?=[\x00-\x7F]+\z).*?|.*?[^\x81-\x9F\xE0-\xFC](?:[\x81-\x9F\xE0-\xFC][\x00-\xFF])*?))};

if (($] >= 5.010001) or
    (($] >= 5.008) and ($^O eq 'MSWin32') and (defined($ActivePerl::VERSION) and ($ActivePerl::VERSION > 800))) or
    (($] =~ /\A 5\.006/oxms) and ($^O eq 'MSWin32'))
) {
    # avoid: Complex regular subexpression recursion limit (32766) exceeded at here.
    local $^W = 0;

    if (((('A' x 32768).'B') !~ /${anchor1}B/b) and
        ((('A' x 32768).'B') =~ /${anchor2}B/b)
    ) {
        # do test
    }
    else {
        for my $tno (1..1) {
            print "ok - $tno # SKIP $^X $0\n";
        }
        exit;
    }
}
else {
    for my $tno (1..1) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

my $data = <<END;
<dl>
<td>aaa</td>
<dd>12��������������������������������������������������������������������</dd>
</dl>
END
$data = $data x int(40000 / length($data));

my $bbb = <<END;
<dl>
<td>bbb</td>
<dd>6789</dd>
</dl>
END

my $ccc = <<END;
<dl>
<td>ccc</td>
<dd>6789</dd>
</dl>
END

my $data2 = "$data$bbb";
$data2 =~ s|<td>bbb</td>|<td>ccc</td>|;

if ($data2 eq "$data$ccc") {
    print "ok - 1 $^X $__FILE__\n";
}
else {
    print "not ok - 1 $^X $__FILE__\n";
}

__END__

http://okwave.jp/qa/q6674287.html
Perl �ե�����쵤�ɤ߸������ɽ���ˤĤ���
Perl�ǰʲ����̤ꡢ
html�ե�����������ɤ߹�����������ɽ�������Ƥ����ΤǤ��������ޤ������ޤ���
���̤Ǥ�����������¸�Τ�������ä��㤤�ޤ����鶵����ĺ���ޤ���Ǥ��礦����
�ޤ���¾���ɤ������ˡ������ޤ����鶵����ĺ����ȹ����Ǥ���
��PC�Ķ���windows7, perl5.12�Ǥ����������­���������ޤ����餴��Ŧ��������

-----
#--test.html(��¦�ο����ϹԿ�)
000001 <dl>
000002 <dt>aaa</dt>
000003 <dd>12345</dd>
000004 </dl>

����ά��

120001 <dl>
120002 <dt>bbb</dt>
120003 <dd>6789</dd>
120004 </dl>

#--test.pl
open IN , "test.html";
local $/ = undef;
$data = <IN>;
close IN;

$data =~ s|<td>bbb</td>|<td>ccc</td>|;
print "$data\n";
-----

�ե�����λϤ��������������Τˡ���Ⱦ�Ǥ�������ޤ���
����ɽ�����оݤȤ����礭�������Ǥ��礦����������

$data =~ s|<td>aaa</td>|<td>ccc</td>|;
�ϡ�������ޤ���

$data =~ s|<td>bbb</td>|<td>ccc</td>|;
����������ޤ���

�ɤ�����������ꤤ�������ޤ���
