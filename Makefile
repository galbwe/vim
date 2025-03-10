.PHONY: fmt, update

fmt:
	python3 ./scripts/trim_whitespace.py vimrc

update:
	python3 ./scripts/update_vimrc.py

