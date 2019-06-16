HS ?= /Applications/Hammerspoon.app/Contents/Resources/extensions/hs/ipc/bin/hs

.PHONY: doc
doc: docs.json

docs.json: *.lua
	$(HS) -c "hs.doc.builder.genJSON(\"$(CURDIR)\")" \
		| grep -v "^--" > $@
