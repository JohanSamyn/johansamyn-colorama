# This makefile is just a cheatsheet to remind me of some commonly used
# commands. I generally am executing these commands on Ubuntu, or on WindowsXP
# with Cygwin binaries at the start of the PATH.

NAME=colorama

clean:
	-rm -rf build dist MANIFEST
	-find . -name '*.py[oc]' -exec rm {} \;
.PHONY: clean

docs:
	rst2html README.rst README.html

sdist: clean
	python setup.py sdist --formats=zip,gztar
.PHONY: sdist

register: clean
	python setup.py sdist --formats=zip,gztar register 
.PHONY: release

upload: clean
	python setup.py sdist --formats=zip,gztar register upload
.PHONY: release

test:
	-nosetests -s
.PHONY: test

tags:
	ctags -R ${NAME}
.PHONY: tags

