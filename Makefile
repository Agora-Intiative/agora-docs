
SUBDIRS=\
    flyer-a5

all:
	for i in $(SUBDIRS) ; do $(MAKE) -C $$i ; done

clean:
	for i in $(SUBDIRS) ; do $(MAKE) -C $$i clean ; done
