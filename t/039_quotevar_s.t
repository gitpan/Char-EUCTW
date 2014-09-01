# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;
print "1..5\n";

my $__FILE__ = __FILE__;

$a = "��";
if ($a =~ s/^\Q$a\E$//) {
    print qq#ok - 1 \$a =~ s/^\\Q\$a\\E\$// $^X $__FILE__\n#;
}
else {
    print qq#not ok - 1 \$a =~ s/^\\Q\$a\\E\$// $^X $__FILE__\n#;
}

$a[0] = "��";
if ($a[0] =~ s/^\Q$a[0]\E$//) {
    print qq#ok - 2 \$a[0] =~ s/^\\Q\$a[0]\\E\$// $^X $__FILE__\n#;
}
else {
    print qq#not ok - 2 \$a[0] =~ s/^\\Q\$a[0]\\E\$// $^X $__FILE__\n#;
}

$b = 1;
$a[1] = '';
if ($a[$b] =~ s/^\Q$a[$b]\E$//) {
    print qq#ok - 3 \$a[\$b] =~ s/^\\Q\$a[\$b]\\E\$// $^X $__FILE__\n#;
}
else {
    print qq#not ok - 3 \$a[\$b] =~ s/^\\Q\$a[\$b]\\E\$// $^X $__FILE__\n#;
}

$a{"��"} = "ɽ";
if ($a{'��'} =~ s/^\Q$a{'��'}\E$//) {
    print qq#ok - 4 \$a{'��'} =~ s/^\\Q\$a{'��'}\\E\$// $^X $__FILE__\n#;
}
else {
    print qq#not ok - 4 \$a{'��'} =~ s/^\\Q\$a{'��'}\\E\$// $^X $__FILE__\n#;
}

$b = "��";
if ($a{$b} =~ s/^\Q$a{$b}\E$//) {
    print qq#ok - 5 \$a{\$b} =~ s/^\\Q\$a{\$b}\\E\$// $^X $__FILE__\n#;
}
else {
    print qq#not ok - 5 \$a{\$b} =~ s/^\\Q\$a{\$b}\\E\$// $^X $__FILE__\n#;
}

__END__