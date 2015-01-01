# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{¤¢} ne "\xa4\xa2";

use Char::EUCTW;

print "1..12\n";

# Char::EUCTW::eval "..." has Char::EUCTW::eval "..."
if (Char::EUCTW::eval " Char::EUCTW::eval \" if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } \" ") {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval qq{...}
if (Char::EUCTW::eval " Char::EUCTW::eval qq{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } } ") {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval '...'
if (Char::EUCTW::eval " Char::EUCTW::eval ' if (qq{¢¢¡ü} !~ /¢¡/) { return 1 } else { return 0 } ' ") {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval q{...}
if (Char::EUCTW::eval " Char::EUCTW::eval q{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } } ") {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval $var
my $var = q{q{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } }};
if (Char::EUCTW::eval " Char::EUCTW::eval $var ") {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval (omit)
$_ = "if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 }";
if (Char::EUCTW::eval " Char::EUCTW::eval ") {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has Char::EUCTW::eval {...}
if (Char::EUCTW::eval " Char::EUCTW::eval { if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } } ") {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has "..."
if (Char::EUCTW::eval " if ('¢¢¡ü' !~ /¢¡/) { return \"1\" } else { return \"0\" } ") {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has qq{...}
if (Char::EUCTW::eval " if ('¢¢¡ü' !~ /¢¡/) { return qq{1} } else { return qq{0} } ") {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has '...'
if (Char::EUCTW::eval " if ('¢¢¡ü' !~ /¢¡/) { return '1' } else { return '0' } ") {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has q{...}
if (Char::EUCTW::eval " if ('¢¢¡ü' !~ /¢¡/) { return q{1} } else { return q{0} } ") {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::EUCTW::eval "..." has $var
my $var1 = 1;
my $var0 = 0;
if (Char::EUCTW::eval " if ('¢¢¡ü' !~ /¢¡/) { return $var1 } else { return $var0 } ") {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
