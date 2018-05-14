CFLAGS=-Wall -Wextra

%.o: %.c
	gcc -c -o $@ $< $(CFLAGS)

%: %.o
	gcc -o $@ $< $(CFLAGS)

