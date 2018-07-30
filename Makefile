all: %.a

%.a : %.b %.c
	@echo $+ > $@
