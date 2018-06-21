all:
	make html
	make latex
	make pdf

html:
	mkdir -p build
	sphinx-build -M html  "." "build"

latex:
	mkdir -p build
	sphinx-build -M latex "." "build"

pdf:
	make latex
	mkdir -p build/pdf
	cp -R build/latex/* build/pdf/
	make -C build/pdf
	rm build/pdf/[a-df-zA-Z]* build/pdf/etc_tech_ref.[a-oq-z]*
