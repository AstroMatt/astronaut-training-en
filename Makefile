cpu_cores = 11
format = html
book = /tmp/book-astro-en/
slides = /tmp/slides-astro-en/

book:
	rm -fr $(book)
	clear
	sphinx-build -j $(cpu_cores) -b $(format) . $(book)

slides:
	rm -fr $(book)
	clear
	sphinx-build -j $(cpu_cores) -b $(format) _slides/ $(slides)

help:
	@sphinx-build -M help help help

clean:
	-rm -fr $(book)
	-rm -fr $(slides)
