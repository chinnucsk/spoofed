
ERL=erl

all: dir erl

dir:
	-@mkdir -p priv/tmp ebin

erl:
	@$(ERL) -noinput +B \
		-eval 'case make:all() of up_to_date -> halt(0); error -> halt(1) end.'

clean:  
	@rm -fv ebin/*.beam

