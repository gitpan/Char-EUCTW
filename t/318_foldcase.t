# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..13\n";

my $__FILE__ = __FILE__;

if ($] < 5.016) {
    for my $tno (1 .. 13) {
        print qq{ok - $tno # SKIP $^X/$] $^O $__FILE__\n};
    }
    exit;
}

if (fc('ABCDEF') eq fc('abcdef')) {
    print qq{ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}
else {
    print qq{not ok - 1 fc('ABCDEF') eq fc('abcdef')\n};
}

if (fc('����������') eq '����������') {
    print qq{ok - 2 fc('����������') eq '����������'\n};
}
else {
    print qq{not ok - 2 fc('����������') eq '����������'\n};
}

if ("\FABCDEF\E" eq "\Fabcdef\E") {
    print qq{ok - 3 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}
else {
    print qq{not ok - 3 "\\FABCDEF\\E" eq "\\Fabcdef\\E"\n};
}

if ("\F����������\E" eq "����������") {
    print qq{ok - 4 "\\F����������\\E" eq "����������"\n};
}
else {
    print qq{not ok - 4 "\\F����������\\E" eq "����������"\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/) {
    print qq{ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}
else {
    print qq{not ok - 5 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/) {
    print qq{ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}
else {
    print qq{not ok - 6 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/\n};
}

if ("\FABCDEF\E" =~ /\Fabcdef\E/i) {
    print qq{ok - 7 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}
else {
    print qq{not ok - 7 "\\FABCDEF\\E" =~ /\\Fabcdef\\E/i\n};
}

if ("\Fabcdef\E" =~ /\FABCDEF\E/i) {
    print qq{ok - 8 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}
else {
    print qq{not ok - 8 "\\Fabcdef\\E" =~ /\\FABCDEF\\E/i\n};
}

my $var = 'abcdef';
if ("\FABCDEF\E" =~ /\F$var\E/i) {
    print qq{ok - 9 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 9 "\\FABCDEF\\E" =~ /\\F\$var\\E/i\n};
}

$var = 'ABCDEF';
if ("\Fabcdef\E" =~ /\F$var\E/i) {
    print qq{ok - 10 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 10 "\\Fabcdef\\E" =~ /\\F\$var\\E/i\n};
}

if ("����������" =~ /\F����������\E/) {
    print qq{ok - 11 "����������" =~ /\\F����������\\E/\n};
}
else {
    print qq{not ok - 11 "����������" =~ /\\F����������\\E/\n};
}

if ("����������" =~ /\F����������\E/i) {
    print qq{ok - 12 "����������" =~ /\\F����������\\E/i\n};
}
else {
    print qq{not ok - 12 "����������" =~ /\\F����������\\E/i\n};
}

$var = '����������';
if ("����������" =~ /\F$var\E/i) {
    print qq{ok - 13 "����������" =~ /\\F\$var\\E/i\n};
}
else {
    print qq{not ok - 13 "����������" =~ /\\F\$var\\E/i\n};
}

__END__

