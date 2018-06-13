JC = javac
CLASSPATH = ./lib/purejavacomm.jar:./lib/jna-4.4.0.jar
SP = ./src/mc/*.java ./src/mc/gui/*.java
SOURCEFILES = Main.java
RUNPATH = ${CLASSPATH}:bin:icons
.SUFFIXES: .java .class
main:
	$(JC) -d bin -cp ${CLASSPATH} ${SP}

default: main

run:
	sudo java -cp ${RUNPATH} mc.Main

clean:
	rm -r bin/*
