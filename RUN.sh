#!/usr/bin/env bash
# Exam Monitor website: https://sdu.exammonitor.dk/

fileUrl=https://login.exammonitor.dk/exam.jnlp
fileName=exam.jnlp
fileSha512Checksum=33d1d82412e3c0b0e7121c3f4c157235d764ffa20c4525cf12a4512ea7bfa5d4cf9cf93045ee52ef8a14450a2fc974db7b4bc9d33bdf49365b073d2c80a86aa0

# Download exam.jnlp.
echo -e "Downloading exam.jnlp...\n"
wget -O $fileName $fileUrl

# Integrity check.
echo "Running integrity check..."
computedFileSha512Checksum=$(sha512sum $fileName | awk '{print $1}')

if [[ "$fileSha512Checksum" == "$computedFileSha512Checksum" ]]; then

    echo "Integrity verified for file $fileName..."

else

    echo "WARNING: Integrity check failed!"
    echo -e "This might just mean that the Exam Monitor file $fileName have been changed.\n"
    read -n 1 -p "Do you want to proceed anyway? [y/N]: " prompt
    echo -e "\n\nFeel free to also submit an issue to GitHub, you can do that by simply following this URL:\nhttps://github.com/frederikstroem/SDU-Exam-Monitor-Linux-Install-Helper/issues/new?title=Integrity+check+failed\n"
    if [[ $prompt != "y" && $prompt != "Y" ]]; then
        echo "Quitting..."
        exit 1
    fi

fi

echo -e "Running Exam Monitor from $fileName...\n"
javaws $fileName
