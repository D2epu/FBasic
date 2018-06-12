# This makefile written by DeepuKumar

CF = -c
OP = /EHsc

S = src
B = bin

SRC = $(S)\ERROR.CPP \
	  $(S)\LOADER.CPP \
	  $(S)\SCANNER.CPP \
	  $(S)\EXPRESSION.CPP \
	  $(S)\STATEMENT.CPP \
	  $(S)\PARSER.CPP \
	  $(S)\PRINTER.CPP \
	  $(S)\RESOLVER.CPP \
	  $(S)\COMPILER.CPP \
	  $(S)\MAIN.CPP
	  

COM = ERROR.OBJ \
	  LOADER.OBJ \
	  SCANNER.OBJ \
	  EXPRESSION.OBJ \
	  STATEMENT.OBJ \
	  PARSER.OBJ \
	  PRINTER.OBJ \
	  RESOLVER.OBJ \
	  COMPILER.OBJ \
	  MAIN.OBJ
	  
#VM = ERROR.OBJ FBVM.OBJ

all: compile link clean

compile:
	cl $(OP) $(CF) $(SRC)

link:
	link /OUT:$(B)\FBC.EXE /RELEASE $(COM)
#	link /OUT:$(B)\FBVM.EXE /RELEASE $(VM)

clean:
	DEL *.OBJ