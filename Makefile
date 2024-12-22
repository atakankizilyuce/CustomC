exec = hello.ati
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g


$(exec): $(objects)
	gcc $(objects) $(flasgs) -o $(exec)

%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

install:
	make
	cp ./hello.ati /home/myprojects/CustomC

clean:
	-rm *.ati
	-rm *.o
	-rm src/*.o
