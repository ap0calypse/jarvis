#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket;

package JarvisFunctions;
require Exporter;
our @ISA = qw(Exporter);

our @EXPORT = qw(tell_jarvis get_config);

sub tell_jarvis {
    my $serv = IO::Socket::INET->new(
        Proto    => "tcp",
        PeerAddr => "localhost",
        PeerPort => 31337,
    );
    my ($id, $name, $type, $status, $message) = (shift, shift, shift, shift, shift);
    print $serv "$id:$name:$type:$status:$message\n";
}

sub get_config {
    return "/etc/jarvis.conf";
}


1;
