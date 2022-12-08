JC = javac
CLASSPATH = ./lib/purejavacomm.jar:./lib/jna-4.4.0.jar
SP = ./src/mc/*.java ./src/mc/gui/*.java
SOURCEFILES = Main.java
RUNPATH = ${CLASSPATH}:bin:icons
.SUFFIXES: .java .class
main:
	$(JC) -d bin -cp ${CLASSPATH} ${SP}

default: main

run: jar
	runas java -jar MimasV2Configurator.jar

jar: main
	jar cfm MimasV2Configurator.jar Manifest.txt -C bin mc

pack: jar
	mkdir -p MimasV2Configurator
	cp -r ./lib MimasV2Configurator
	cp -r ./icons MimasV2Configurator
	cp MimasV2Configurator.jar MimasV2Configurator
	cp MimasV2Configurator.sh MimasV2Configurator
	cp MimasV2Configurator.bat MimasV2Configurator
	zip -r MimasV2Configurator.zip ./MimasV2Configurator
	rm -fr MimasV2Configurator

clean:
	rm -rf bin/*
	rm -f MimasV2Configurator.jar
	rm -f MimasV2Configurator.zip
