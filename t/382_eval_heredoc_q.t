# This file is encoded in EUC-TW.
die "This file is not encoded in EUC-TW.\n" if q{¤¢} ne "\xa4\xa2";

use Char::EUCTW;

print "1..12\n";

# eval <<'END' has eval "..."
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape " if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } "
END
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval qq{...}
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape qq{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } }
END
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval '...'
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape ' if (qq{¢¢¡ü} !~ /¢¡/) { return 1 } else { return 0 } '
END
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval q{...}
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape q{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } }
END
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval $var
my $var = q{ if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } };
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape $var
END
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval (omit)
$_ = "if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 }";
if (eval Char::EUCTW::escape <<'END') {
eval Char::EUCTW::escape
END
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# eval <<'END' has eval {...}
if (eval Char::EUCTW::escape <<'END') {
eval { if ('¢¢¡ü' !~ /¢¡/) { return 1 } else { return 0 } }
END
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# eval <<'END' has "..."
if (eval Char::EUCTW::escape <<'END') {
if ('¢¢¡ü' !~ /¢¡/) { return "1" } else { return "0" }
END
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# eval <<'END' has qq{...}
if (eval Char::EUCTW::escape <<'END') {
if ('¢¢¡ü' !~ /¢¡/) { return qq{1} } else { return qq{0} }
END
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# eval <<'END' has '...'
if (eval Char::EUCTW::escape <<'END') {
if ('¢¢¡ü' !~ /¢¡/) { return '1' } else { return '0' }
END
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# eval <<'END' has q{...}
if (eval Char::EUCTW::escape <<'END') {
if ('¢¢¡ü' !~ /¢¡/) { return q{1} } else { return q{0} }
END
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# eval <<'END' has $var
my $var1 = 1;
my $var0 = 0;
if (eval Char::EUCTW::escape <<'END') {
if ('¢¢¡ü' !~ /¢¡/) { return $var1 } else { return $var0 }
END
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
