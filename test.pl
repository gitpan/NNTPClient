# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN {print "1..4\n";}
END {print "not ok 1\n" unless $loaded;}
use News::NNTPClient;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

$c = new News::NNTPClient("","",2);

print "not " unless $c->ok;
print "ok 2\n";

print "not " unless $c->yymmdd_hhmmss(946710000) eq "20000101 000000";
print "ok 3\n";

$c->y2k(0);

print "not " unless $c->yymmdd_hhmmss(946709999) eq "991231 235959";
print "ok 4\n";

