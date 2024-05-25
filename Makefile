PAGES := $(patsubst pages/%.md,build/%.html,$(wildcard pages/*.md))
DEPS := template.html styles.html

.PHONY: all
all: $(PAGES)

build/%.html: pages/%.md $(DEPS) | build
	pandoc --from=commonmark_x --to=html --template=template.html -o $@ $<

build build/res:
	mkdir -p $@

build/res/%: res/% | build/res
	cp $< $@/

.PHONY: clean
clean:
	rm -rf build
