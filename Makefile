MAKEFLAGS += --jobs=4 --output-sync=target # requires GNU Make >=4.3
PAGES := $(patsubst pages/%.md,build/%.html,$(wildcard pages/*.md))
DEPS := template.html
RESOURCES := $(patsubst %,build/%,$(wildcard res/**))

.PHONY: all
all: $(PAGES) $(RESOURCES)

build/%.html: pages/%.md $(DEPS) | build
	pandoc --from=commonmark_x --to=html --template=template.html -o $@ $<

build/style.css: newstyle.css | build
	cp $< $@

build/res/%: res/% | build/res
	cp $< $@

build build/res:
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf build
