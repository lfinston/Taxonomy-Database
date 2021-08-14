#### Makefile.am
#### Created by Laurence D. Finston Sat 14 Aug 2021 09:36:12 PM CEST
   
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

vpath %.web $(SOURCEDIR)
vpath %.h $(SOURCEDIR)
vpath %.c $(SOURCEDIR)
vpath %.o $(SOURCEDIR)


EXTRA_DIST = 

.DELETE_ON_ERROR :


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
