# SDU Exam Monitor Linux Install Helper
**DISCLAIMER:** I'm not in any way afflitiated with Exam Monitor!

## Quick start
### Prerequisites
You will first need a Java runtime and IcedTea-Web to utilize Java Web Start (A.K.A JSR-56).

TODO

## What is Exam Monitor?

*"Exam Monitor is an it-system that has developed for digital exam, in order to discourage from cheating.*

*Prior to exam, the student has to start the java based program Exam Monitor on his/her computer. The Exam Monitor client takes screendumps at random interval, and logs the processes that run on the computer. Data is stored centrally placed secure server.*

*This means that any exchange of information with other persons during exam is likely to be logged.*

*Exam Monitor only monitors files and processes that are active on the computer. Content in the file system is not monitored, if it is not opened during the exam. After exam the client stops, and monitoring does no longer take place. The student can log in to the server after exam, and see his/her own data. The data is kept for up to 5 years, and then deleted automatically."*

 — Quote from the [Exam Monitor webpage](https://sdu.exammonitor.dk/).

## Motivation
I'm a student at The University of Southern Denmark (SDU), and I wanted Exam Monitor to be easier to launch on Linux. There are a lot of things I do NOT like about Exam Monitor, but the install process was one thing I could fix...

By launching the program from a terminal, its outputs are also easier to monitor (expect a ton of warnings, it is Java 😝).
