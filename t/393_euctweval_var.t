# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;

print "1..12\n";

my $var = '';

# Char::EUCTW::eval $var has Char::EUCTW::eval "..."
$var = <<'END';
Char::EUCTW::eval " if ('����' !~ /��/) { return 1 } else { return 0 } "
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval qq{...}
$var = <<'END';
Char::EUCTW::eval qq{ if ('����' !~ /��/) { return 1 } else { return 0 } }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval '...'
$var = <<'END';
Char::EUCTW::eval ' if (qq{����} !~ /��/) { return 1 } else { return 0 } '
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval q{...}
$var = <<'END';
Char::EUCTW::eval q{ if ('����' !~ /��/) { return 1 } else { return 0 } }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval $var
$var = <<'END';
Char::EUCTW::eval $var2
END
my $var2 = q{ if ('����' !~ /��/) { return 1 } else { return 0 } };
if (Char::EUCTW::eval $var) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval (omit)
$var = <<'END';
Char::EUCTW::eval
END
$_ = "if ('����' !~ /��/) { return 1 } else { return 0 }";
if (Char::EUCTW::eval $var) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has Char::EUCTW::eval {...}
$var = <<'END';
Char::EUCTW::eval { if ('����' !~ /��/) { return 1 } else { return 0 } }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has "..."
$var = <<'END';
if ('����' !~ /��/) { return "1" } else { return "0" }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has qq{...}
$var = <<'END';
if ('����' !~ /��/) { return qq{1} } else { return qq{0} }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has '...'
$var = <<'END';
if ('����' !~ /��/) { return '1' } else { return '0' }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has q{...}
$var = <<'END';
if ('����' !~ /��/) { return q{1} } else { return q{0} }
END
if (Char::EUCTW::eval $var) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval $var has $var
$var = <<'END';
if ('����' !~ /��/) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::EUCTW::eval $var) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
