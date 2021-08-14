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
#### 

ACLOCAL_AMFLAGS = -I m4

# SOURCEDIR := src
# DOCDIR    := doc
# OLDDOCDIR := doc/old_doc

# EXAMPLESDIR := examples

# export SOURCEDIR
# export DOCDIR
# export OLDDOCDIR
# export EXAMPLESDIR

# vpath %.web $(SOURCEDIR)
# vpath %.h $(SOURCEDIR)
# vpath %.c $(SOURCEDIR)
# vpath %.o $(SOURCEDIR)


EXTRA_DIST = ChangeLog reconfig.sh

.DELETE_ON_ERROR :

#SUBDIRS = $(SOURCEDIR) $(DOCDIR) $(OLDDOCDIR) $(EXAMPLESDIR)


# .PHONY: dummy
# dummy:
# 	echo "distdir = $(distdir)"
# 	$(MAKE) dummy -C $(SOURCEDIR)


# .PHONY: info
# info:
# 	@echo "info in 3DLDF-<Version>/Makefile.am."
# 	$(MAKE) info -C $(SOURCEDIR)


# .PHONY: info-recursive
# info-recursive:
# 	@echo "info-recursive in 3DLDF-<Version>/Makefile.am."
# 	$(MAKE) info-recursive -C $(SOURCEDIR)


# .PHONY : 3dldf
# 3dldf : 
# 	$(MAKE) 3dldf -C $(SOURCEDIR)



# .PHONY : ps
# ps : 
# 	@echo Running \"make ps\" in $(SOURCEDIR)
# 	$(MAKE) ps -C $(SOURCEDIR)


# .PHONY : 3DLDFput.mp
# 3DLDFput.mp:
# 	@echo Running \"make 3DLDFput.mp\" in $(SOURCEDIR)
# 	$(MAKE) 3DLDFput.mp -C $(SOURCEDIR)

# .PHONY : ldf
# ldf : 3DLDFput.mp
# 	@echo Running \"make ldf\" in $(SOURCEDIR)
# 	$(MAKE) ldf -C $(SOURCEDIR)

# .PHONY : 3
# 3 : 
# 	@echo Running \"make 3\" in $(SOURCEDIR)
# 	$(MAKE) 3 -C $(SOURCEDIR)

# .PHONY : mp
# mp : 
# 	@echo Running \"make mp\" in $(SOURCEDIR)
# 	$(MAKE) mp -C $(SOURCEDIR)


# .PHONY : run
# run: 
# 	@echo Running \"make run\" in $(SOURCEDIR)
# 	$(MAKE) run -C $(SOURCEDIR)

# .PHONY : purge
# purge:
# 	$(MAKE) purge -C $(SOURCEDIR)
# 	@echo "Deleting $(distdir).tar.gz (the tarball containing the distribution)."
# 	-rm -f $(distdir).tar.gz

# TAGS : 

# 	$(MAKE) TAGS -C $(SOURCEDIR)

all: taxonomy$(EXEEXT)

taxonomy$(EXEEXT): taxonomy.o
	g++ -o taxonomy taxonomy.o

taxonomy.o: taxonomy.cxx
	g++ -o taxonomy.o -I/usr/include/mysql -g -c taxonomy.cxx

taxonomy.cxx: taxonomy.web
	ctangle taxonomy.web - taxonomy.cxx

.PHONY: run

run: taxonomy$(EXEEXT)
	taxonomy$(EXEEXT)

.PHONY: clean

clean:
	rm -f taxonomy.cxx taxonomy.o





.PHONY: query

query:
	echo "query:"

## Local Variables:
## mode:Makefile
## End:
