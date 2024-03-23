.SHELLFLAGS := -eu -o pipefail -c
MAKEFLAGS += --no-builtin-rules --warn-undefined-variables

POSTS := $(patsubst %.md,build/%.html,$(wildcard post/*.md))
CPY_SRC := index.html style.css theme_switch.js res/portrait.jpg
CPY_DST := $(CPY_SRC:%=build/%)

.PHONY: all
all: $(CPY_DST) $(POSTS)

build/post/%.html: post/%.md template.html | build/post
	pandoc --from=commonmark_x --to=html --template=template.html $< -o $(*F) && mv $(*F) $@

$(CPY_DST) &: $(CPY_SRC) | build/res
	$(foreach file,$?,cp $(file) build/$(file);)

build build/post build/res:
	@mkdir -p $@

.PHONY: clean
clean:
	-rm -r build
