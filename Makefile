SOURCE_FILES = $(wildcard src/* src/*/* src/*/*/*)

target/main.pdf: $(SOURCE_FILES)
	mkdir -p target; \
	(  \
		cd src; \
		pdflatex -output-directory="../target" main.tex; \
	); \
	cp -r src/bib target; \
	(  \
		cd target; \
		bibtex main; \
	); \
	(  \
		cd src; \
		pdflatex -output-directory="../target" main.tex; \
		pdflatex -output-directory="../target" main.tex; \
	);
