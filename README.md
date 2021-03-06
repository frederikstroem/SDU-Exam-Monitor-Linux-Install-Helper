# SDU Exam Monitor Linux Install Helper
**DISCLAIMER:** I'm not in any way afflitiated with [Exam Monitor](https://sdu.exammonitor.dk/)!

## Java version
You need a Java version compatiable with Exam Monitor.

| Compatiable with<br>Exam Monitor | Java Version | Notes
| :-: | - | -
| <span style="font-size: 25px">✅</span> | Version 8 | **2022-06-08:**<br>Works without problems<br>OS: Arch Linux x86_64<br>Kernel: 5.17.4-arch1-1<br>DE: *Plasma 5.24.4*
| <span style="font-size: 25px">❌</span> | Version 18 | **2022-06-08:**<br>[Crashes instantly](https://github.com/frederikstroem/SDU-Exam-Monitor-Linux-Install-Helper/issues/1).<br>OS: Arch Linux x86_64<br>Kernel: 5.17.4-arch1-1<br>DE: *Plasma 5.24.4*

### Debian / Ubuntu
Install a specefic Java version.

```
sudo apt -y install openjdk-8-jdk
```

Package list can be refreshed by running `sudo apt update` before running installation.

The default Java version can be changed with

```
sudo update-alternatives --config java
```

### Arch / Manjaro
```
sudo pacman -S --needed jdk8-openjdk
```

Package list can be refreshed by running `sudo pacman -Sy` (or `sudo pacman -Syy` for forced refresh) before running installation.

The default Java version can be changed with

```
sudo archlinux-java set java-8-openjdk
```

The installed Java versions can be viewed with

```
archlinux-java status
```

## Prerequisites
You will first need a Java runtime and IcedTea-Web to utilize Java Web Start (A.K.A. [JSR-56](http://www.jcp.org/en/jsr/detail?id=56)).

When installing IcedTea-Web via your package manager, a Java runtime should automatically be installed as a dependency. If given the choice of which Java runtime package to be installed then `jdk-openjdk` (Arch) or `default-jre` (Debian/Ubuntu) is recommended.

Open your terminal, can usally be done by pressing <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>. Then run the install command fitting to your Linux distribution. Note that Git is only needed if planning to clone this repostitory instead of downloading it as a [.zip](https://github.com/frederikstroem/SDU-Exam-Monitor-Linux-Install-Helper/archive/refs/heads/main.zip) or [.tar.gz](https://github.com/frederikstroem/SDU-Exam-Monitor-Linux-Install-Helper/archive/refs/heads/main.tar.gz).


### Debian / Ubuntu
```
sudo apt -y install wget git icedtea-netx
```

Package list can be refreshed by running `sudo apt update` before running installation.

### Arch / Manjaro
```
sudo pacman -S --needed wget git icedtea-web
```

Package list can be refreshed by running `sudo pacman -Sy` (or `sudo pacman -Syy` for forced refresh) before running installation.

## Run Exam Monitor
Clone this repository and change directory into it.

```
git clone https://github.com/frederikstroem/SDU-Exam-Monitor-Linux-Install-Helper.git && cd SDU-Exam-Monitor-Linux-Install-Helper
```

Execute the script to run Exam Monitor from your terminal.
```
./run.sh
```

Success! 🎉 Big Brother is now watching you. 😉

### Test everything is working as expected
After logging in with your SDU credentials, you can test exam monitor by typing in `demo` as the course name. This will run the program in a test mode.

If the browser does not open automatically when you are trying to login with your SDU credentials, then the link to login should also be present in your clipboard. You should therefore just be able to paste the link in a browser address bar with <kbd>Ctrl</kbd> + <kbd>V</kbd>.

## What is Exam Monitor?

*"Exam Monitor is an it-system that has developed for digital exam, in order to discourage from cheating.*

*Prior to exam, the student has to start the java based program Exam Monitor on his/her computer. The Exam Monitor client takes screendumps at random interval, and logs the processes that run on the computer. Data is stored centrally placed secure server.*

*This means that any exchange of information with other persons during exam is likely to be logged.*

*Exam Monitor only monitors files and processes that are active on the computer. Content in the file system is not monitored, if it is not opened during the exam. After exam the client stops, and monitoring does no longer take place. The student can log in to the server after exam, and see his/her own data. The data is kept for up to 5 years, and then deleted automatically."*

 — Quote from the [Exam Monitor webpage](https://sdu.exammonitor.dk/).

## Motivation
I'm a student at The University of Southern Denmark (SDU), and I wanted Exam Monitor to be easier to launch on Linux. There are a lot of things I do NOT like about Exam Monitor, but the install process was one thing I could fix...

By launching the program from a terminal, its outputs are also easier to monitor (expect a ton of warnings though, it is Java after all 😝).
