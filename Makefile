SOURCE_FILES = $(wildcard src/* src/*/* src/*/*/*)

target/main.pdf: $(SOURCE_FILES)
	cd src; pdflatex -output-directory="../target" main.tex
