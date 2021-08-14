#### configure.ac
#### Created by Laurence D. Finston (LDF) Sat 14 Aug 2021 07:09:28 PM CEST

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

  
.# Process this file with autoconf to produce a configure script.
AC_INIT([Taxonomy-Database], [1.0], [Laurence.Finston@gmx.de], [Taxonomy-Database])
#AC_CONFIG_SRCDIR([src/main.web])
AM_INIT_AUTOMAKE
AC_CONFIG_HEADERS(config.h)
AC_CONFIG_MACRO_DIR([m4])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_MAKE_SET
AC_PROG_YACC
AM_PROG_LEX
AC_CHECK_PROG([HAVE_GZIP], [gzip], 1, 0) 

AC_DEFINE_UNQUOTED([HAVE_GZIP], $HAVE_GZIP, d
                   [Define to 1, if `gzip' is available, otherwise 0.])

# Checks for libraries.
#AC_CHECK_LIB(m, trunc)
AC_CHECK_LIB(mysqlclient, mysql_init)

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([errno.h float.h limits.h stdlib.h \
                  unistd.h pthread.h mysql.h])

# Checks for typedefs, structures, and compiler characteristics.
#AC_C_CONST
#AC_C_INLINE
#AC_TYPE_SIZE_T
#AC_STRUCT_TM
AC_CHECK_TYPES([unsigned long long, unsigned long, unsigned int])

# Checks for library functions.
#AC_FUNC_MALLOC
#AC_FUNC_STAT
AC_SEARCH_LIBS(trunc, m)
AC_CHECK_FUNCS([floor sqrt trunc])

AC_CONFIG_FILES([Makefile])

# Checks for endianness.
AC_C_BIGENDIAN

AC_ARG_ENABLE([dummy],
AC_HELP_STRING([--enable-debug-compile],
[Enable conditionally compiled debugging output (this is the default).]),
[],[])

AC_ARG_ENABLE([debug-compile], 
[AC_HELP_STRING([--disable-debug-compile],
        [Disable conditionally compiled debugging output.])],
[if test $enableval == "yes"
then
echo "Enabling conditional compilation of debugging output"
AC_DEFINE([DEBUG_COMPILE], [1], 
  [Define to 0 or 1 to disable or enable conditional compilation of debugging output.])
else 
echo "Disabling conditional compilation of debugging output"
AC_DEFINE([DEBUG_COMPILE], [0], 
  [])
fi], 
[echo "Enabling conditional compilation of debugging output"
AC_DEFINE([DEBUG_COMPILE], [1], 
[])	
])

AC_OUTPUT
