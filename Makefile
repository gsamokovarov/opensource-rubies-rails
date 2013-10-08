JADE = ./node_modules/.bin/jade
PEAT = ./vendor/peat

index.html: dependencies
	@$(JADE) index.jade $@

dependencies:
	@npm install .

watch:
	@(echo echo index.jade | $(PEAT) --dynamic 'make')
