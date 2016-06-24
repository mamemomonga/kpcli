
all: local kpcli

local:
	carton install

kpcli:
	echo "#!/bin/sh" >> kpcli
	echo "export PERL5LIB=$(CURDIR)/local/lib/perl5" >> kpcli
	echo "exec $(CURDIR)/kpcli.pl \$$@" >> kpcli
	chmod 755 kpcli

