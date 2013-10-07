JADE = ./node_modules/.bin/jade

index.html: dependencies
	@$(JADE) index.jade $@

dependencies:
	@npm install .
