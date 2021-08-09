#### Makefile
#### Created by Laurence D. Finston (LDF) Mon 09 Aug 2021 11:47:34 PM CEST

taxonomy$(EXEEXT): taxonomy.o
	g++ -o taSxonomy taxonomy.o

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


