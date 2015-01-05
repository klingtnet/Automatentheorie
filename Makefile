all: -a

%:
	@# $@ is the name of the target
	@./build.sh $@ $<

clean:
	latexmk -c
