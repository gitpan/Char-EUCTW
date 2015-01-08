# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{��} ne "\xa4\xa2";

use Char::EUCTW;

print "1..12\n";

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval "..."
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval " if ('����' !~ /��/) { return 1 } else { return 0 } "
END
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval qq{...}
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval qq{ if ('����' !~ /��/) { return 1 } else { return 0 } }
END
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval '...'
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval ' if (qq{����} !~ /��/) { return 1 } else { return 0 } '
END
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval q{...}
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval q{ if ('����' !~ /��/) { return 1 } else { return 0 } }
END
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval $var
my $var = q{q{ if ('����' !~ /��/) { return 1 } else { return 0 } }};
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval $var
END
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval (omit)
$_ = "if ('����' !~ /��/) { return 1 } else { return 0 }";
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval
END
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has Char::EUCTW::eval {...}
if (Char::EUCTW::eval <<"END") {
Char::EUCTW::eval { if ('����' !~ /��/) { return 1 } else { return 0 } }
END
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has "..."
if (Char::EUCTW::eval <<"END") {
if ('����' !~ /��/) { return \"1\" } else { return \"0\" }
END
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has qq{...}
if (Char::EUCTW::eval <<"END") {
if ('����' !~ /��/) { return qq{1} } else { return qq{0} }
END
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has '...'
if (Char::EUCTW::eval <<"END") {
if ('����' !~ /��/) { return '1' } else { return '0' }
END
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has q{...}
if (Char::EUCTW::eval <<"END") {
if ('����' !~ /��/) { return q{1} } else { return q{0} }
END
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval <<"END" has $var
my $var1 = 1;
my $var0 = 0;
if (Char::EUCTW::eval <<"END") {
if ('����' !~ /��/) { return $var1 } else { return $var0 }
END
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
