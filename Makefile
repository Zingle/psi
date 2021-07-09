src = src
bin = bin
images = $(patsubst src/%.psi,image/%.tgz,$(shell find src -type f -name \*.psi))

default: all

clean:
	sudo rm -fr image/*

all: $(images)

$(images): image/%.tgz: src/%.psi
	PSI_LIB=lib/psi/psilib PSI_MIRROR=${PSI_MIRROR} $(bin)/psic -o $@ $<

image/%: src/%.boot
	sudo debootstrap $(shell cat $<) $@ ${DEBOOTSTRAP_MIRROR}
	sudo chown -R $(shell whoami):$(shell whoami) $@
	@touch $@

.PHONY: default clean all
