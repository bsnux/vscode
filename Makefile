list-ext:
	code --list-extensions --show-versions > extensions.txt

install-ext:
	while IFS= read -r line; do code --install-extension $$line; done < "extensions.txt"

copy-files:
	cp /Users/afernandez/Library/Application\ Support/Code/User/keybindings.json .
	cp /Users/afernandez/Library/Application\ Support/Code/User/settings.json .

changes: list-ext copy-files

.PHONY: list-ext install-ext copy-files