SOURCE_FILES = $(wildcard src/* src/*/* src/*/*/*)

target/main.pdf: $(SOURCE_FILES)
	cd src; \
	pdflatex -output-directory="../target" main.tex; \
	cd ../target; \
	bibtex main; \
	cd ../src; \
	pdflatex -output-directory="../target" main.tex; \
	pdflatex -output-directory="../target" main.tex;