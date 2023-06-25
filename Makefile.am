#### Makefile.am
#### Created by Laurence D. Finston Sat 14 Aug 2021 07:16:26 PM CEST
   
#### * (1) Copyright and License.

#### This file is part of Taxonomy-Database, a package for taxonomy.
#### Copyright (C) 2021 Laurence D. Finston

#### Taxonomy-Database is free software; you can redistribute it and/or modify
#### it under the terms of the GNU General Public License as published by
#### the Free Software Foundation; either version 3 of the License, or
#### (at your option) any later version.

#### Taxonomy-Database is distributed in the hope that it will be useful,
#### but WITHOUT ANY WARRANTY; without even the implied warranty of
#### MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#### GNU General Public License for more details.

#### You should have received a copy of the GNU General Public License
#### along with Taxonomy-Database; if not, write to the Free Software
#### Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

#### Please send bug reports to Laurence.Finston@gmx.de

#### The author can be contacted at:

#### Laurence.Finston@gmx.de


#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### $^:  The names of all the prerequisites, with spaces between them.
#### $*:  The stem with which an implicit rule matches

ACLOCAL_AMFLAGS = -I m4

SOURCEDIR := src
#DOCDIR    := doc

export SOURCEDIR
# export DOCDIR

vpath %.web $(SOURCEDIR)
vpath %.h $(SOURCEDIR)
vpath %.c $(SOURCEDIR)
vpath %.o $(SOURCEDIR)

EXTRA_DIST = ChangeLog reconfig.sh

.DELETE_ON_ERROR :

SUBDIRS = $(SOURCEDIR) #$(DOCDIR) 

.PHONY: cxx prog run runc

cxx: taxonomy.cxx

prog: taxonomy($EXEEXT)

run: sub_taxonomy.tex

runc: 
	$(MAKE) run
	cat sub_taxonomy.tex

taxonomy($EXEEXT): taxonomy.o datatypes.o
	g++ -o $@ $^ -L/usr/lib/mysql -lmysqlclient -lm 
           
taxonomy.o: taxonomy.cxx
	g++ -c -g -DHAVE_CONFIG_H -I/usr/include/mysql -o $@ $<

datatypes.o: datatypes.cxx
	g++ -c -g -DHAVE_CONFIG_H -I/usr/include/mysql -o $@ $<

taxonomy.cxx: taxonomy.web
	ctangle $<
	mv taxonomy.c $@

datatypes.cxx: datatypes.web
	ctangle $<
	mv datatypes.c $@

.PHONY: dvi ps pdf

dvi: taxonomy.dvi

pdf: taxonomy.pdf

ps: taxonomy.ps

sub_taxonomy.tex: taxonomy($EXEEXT)
	./taxonomy$(EXEEXT)

taxonomy.dvi: taxonomy.tex sub_taxonomy.tex
	$(TEX) $< && $(TEX) $<

taxonomy.pdf: taxonomy.dvi
	dvipdfmx $<

taxonomy.ps: taxonomy.dvi
	dvips -o $@ $<


# TAGS : 
# 	$(MAKE) TAGS -C $(SOURCEDIR)

.PHONY: query

query:
	echo "query:"

## Local Variables:
## mode:Makefile
## End:
