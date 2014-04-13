package FlagDay;
use strict;

sub ssh {
	my ($host, $command, $key) = @_;
	my @ssh;
	if ($key) {
		@ssh = ('ssh', '-i', "keys/$key", $host);
	} else {
		@ssh = ('ssh', $host);
	}

	my @ret;
	open SSH, '-|', @ssh, $command;
	while (<SSH>) {
		chomp;
		push @ret, $_;
	}
	close SSH;

	return @ret;
}

1;
