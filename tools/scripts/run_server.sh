#!/usr/bin/sh

CLASSPATH=lib/*

java -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true -classpath "$CLASSPATH" org.alexdev.havana.Havana
