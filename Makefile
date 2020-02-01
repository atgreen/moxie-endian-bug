all: br-be.elf br-le.elf clean

br-be.elf: br.c
	moxie-elf-gcc -meb -O2 -Tsim.ld -o $@ $<
	moxie-elf-gdb -batch -ex "disassemble/rs main" $@

br-le.elf: br.c
	moxie-elf-gcc -mel -O2 -Tsim.ld -o $@ $<
	moxie-elf-gdb -batch -ex "disassemble/rs main" $@

clean:
	rm -rf *.elf *~
