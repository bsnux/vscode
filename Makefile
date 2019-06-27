list-ext:
	code --list-extensions --show-versions > extensions.txt

install-ext:
	while IFS= read -r line; do code --install-extension $$line; done < "extensions.txt"

.PHONY: list-ext install-ext