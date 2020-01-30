#compile and link main and myfunc
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o

#compile main file	
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp
	
#compile myfunc,cpp file
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

#clean object and myexe file
clean : 
	rm -f *.o myexe
		 

		