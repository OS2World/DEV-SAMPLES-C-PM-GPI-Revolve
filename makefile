# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: nmake or GNU make
all : revolve.exe

revolve.exe : revolve.obj revolve.def
	gcc -Zomf revolve.obj revolve.def -o revolve.exe
	
revolve.obj : revolve.c 
	gcc -Wall -Zomf -O2 -c revolve.c -o revolve.obj

clean :
	rm -rf *exe *RES *obj