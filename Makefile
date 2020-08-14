VER=23

PREFIX = /usr/local

BINPROGS = \
	kali-chroot \
	kali-vmdk2tar \
	kali-tar2rootfs

BASH = bash

all: $(BINPROGS)

V_GEN = $(_v_GEN_$(V))
_v_GEN_ = $(_v_GEN_0)
_v_GEN_0 = @echo "  GEN     " $@;

edit = $(V_GEN) m4 -P $@.in >$@ && chmod go-w,+x $@

%: %.in common utils
	$(edit)

clean:
	$(RM) $(BINPROGS)

check: all
	@for f in $(BINPROGS); do bash -O extglob -n $$f; done
	@r=0; for t in test/test_*; do $(BASH) $$t || { echo $$t fail; r=1; }; done; exit $$r

install: all
	install -dm755 $(DESTDIR)$(PREFIX)/bin
	install -m755 $(BINPROGS) $(DESTDIR)$(PREFIX)/bin

.PHONY: all clean install uninstall
