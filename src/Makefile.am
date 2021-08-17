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


# ** Variables.

#### Automatic Variables.  For more, see Section 10.5.3, "Automatic Variables"
#### of the Make info manual.
#### LDF 2009.12.29.

#### $@:  Target
#### $<:  First prerequisite
#### y:  The names of all the prerequisites, with spaces between them.
#### $*:  The stem with which an implicit rule matches


vpath %.web $(SOURCEDIR)
vpath %.h $(SOURCEDIR)
vpath %.c $(SOURCEDIR)
vpath %.o $(SOURCEDIR)


#EXTRA_DIST = 

#.DELETE_ON_ERROR :

all: taxonomy$(EXEEXT)

.PHONY: prog

prog: taxonomy$(EXEEXT)

taxonomy$(EXEEXT): taxonomy.o scanner.o parser.o classes.o cmdlnopt.o
	g++ -o taxonomy$(EXEEXT) $^ $(LIBS)

taxonomy.o: taxonomy.cxx classes.hxx cmdlnopt.hxx parser.hxx scanner.hxx
	g++ -o taxonomy.o -DHAVE_CONFIG_H=1 -I/usr/include/mysql -g -c taxonomy.cxx

taxonomy.cxx: taxonomy.web
	ctangle taxonomy.web - taxonomy.cxx

classes.cxx classes.hxx: classes.web
	ctangle classes.web - classes.cxx

classes.o: classes.cxx parser.hxx scanner.hxx
	g++ -o classes.o -DHAVE_CONFIG_H=1 -I/usr/include/mysql -g -c classes.cxx

cmdlnopt.cxx cmdlnopt.hxx: cmdlnopt.web
	ctangle cmdlnopt.web - cmdlnopt.cxx

cmdlnopt.o: cmdlnopt.cxx 
	g++ -o cmdlnopt.o -DHAVE_CONFIG_H=1 -I/usr/include/mysql -g -c cmdlnopt.cxx

parser.y++: parser.web
	ctangle $<
	prbsnflx$(EXEEXT) parser.c parser.yxx
	rm parser.c
	check_scan_parse_output.sh parser.yxx parser.y++

parser.cxx parser.hxx: parser.y++ 
	bison --debug -d -o parser.cxx $<

parser.o: parser.cxx parser.hxx scanner.hxx
	g++ -c -DHAVE_CONFIG_H=1 -I/usr/include/mysql -o $@ $<

scanner.o: scanner.cxx scanner.hxx parser.hxx 
	g++ -c -DHAVE_CONFIG_H=1 -I/usr/include/mysql -o $@ $<

scanner.cxx scanner.hxx : scanner.l++ 
	$(LEX) -o scanner.cxx $<

scanner.l++: scanner.web 
	ctangle scanner.web
	prbsnflx$(EXEEXT) scanner.c scanner.lxx
	rm scanner.c
	check_scan_parse_output.sh scanner.lxx scanner.l++


.PHONY: run

run: taxonomy$(EXEEXT)
	taxonomy$(EXEEXT)

.PHONY: run-e

run-e: taxonomy$(EXEEXT)
	echo "end" | taxonomy$(EXEEXT)

.PHONY: clean

clean:
	rm -f *.cxx *.hxx *.o

.PHONY: query

query:
	echo "query:"
	echo "CXXCOMPILE == $(CXXCOMPILE)"
	echo "CXXLINK == $(CXXLINK)"
	echo "LIBS == $(LIBS)"
	echo "YACC == $(YACC)"
	echo "LEX  == $(LEX)"

## Local Variables:
## mode:Makefile
## End:
