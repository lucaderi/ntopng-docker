ifeq ($(NTOP_ADMIN_PASSWORD),)
$(error Please set the NTOP_ADMIN_PASSWORD md5 value)
endif

build:
		docker build . -t wincus/ntop:dev

run: build
		docker run -d -p 3000:3000 -e NTOP_ADMIN_PASSWORD=$(NTOP_ADMIN_PASSWORD) wincus/ntop:dev 
