.PHONY: examples

CC = xelatex
CV_DIR = cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

examples: $(foreach x, cv, $x.pdf)

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) -output-directory=. $<

clean:
	rm -rf *.pdf
