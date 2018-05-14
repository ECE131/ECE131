CFLAGS=-Wall -Wextra
TARGETS=exercise3_4 exercise3_6 exercise3_9

.PHONY: all
all: $(TARGETS) 

%.o: %.c
	gcc -c -o $@ $< $(CFLAGS)

%: %.o
	gcc -o $@ $< $(CFLAGS)

clean:
	rm *.exe *.o $(TARGETS)
