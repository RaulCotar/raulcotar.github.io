.SHELLFLAGS := -eu -o pipefail -c
MAKEFLAGS += --no-builtin-rules --warn-undefined-variables

POSTS := $(patsubst %.md,docs/%.html,$(wildcard post/*.md))
CPY_SRC := index.html style.css theme_switch.js res/portrait.jpg
CPY_DST := $(CPY_SRC:%=docs/%)

.PHONY: all
all: $(CPY_DST) $(POSTS)

docs/post/%.html: post/%.md template.html | docs/post
	pandoc --from=commonmark_x --to=html --template=template.html $< -o $(*F) && mv $(*F) $@

$(CPY_DST) &: $(CPY_SRC) | docs/res
	$(foreach file,$?,cp $(file) docs/$(file);)

docs docs/post docs/res:
	@mkdir -p $@

.PHONY: clean
clean:
	-rm -r docs
