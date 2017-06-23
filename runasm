#!/bin/bash

# script requires the assembly program name without the .asm extension
# example: hello_world.asm is passed using the script as so -> runasm hello_world

NAME=$1

# I write 32-bit assembly with nasm, hence the use of macho32, if using 64-bit use macho64. There are many different options for this parameter
# this line generates object file from assembly
nasm -f macho32 "$NAME.asm"

# specifiy os version, I use mac osx
# this line links object file:
ld -macosx_version_min 10.7.0 -o "$NAME" "$NAME.o"

# run resultant executable file
"./$NAME"








