cc -c source/block.c -o block.o
ar qc libBlock.a block.o
cc -c program.c -o program.o
cc program.o libBlock.a -o static_block


cc -fPIC -c source/block.c -o block2.o
cc -shared -o sharedLibBlock.so block2.o
cc program.o sharedLibBlock.so -o dynamic_block -Wl,-rpath .