#!/bin/bash

strings fs.img | grep 'S!' > tmp.txt
head -1 tmp.txt > data.txt
sed -r 's/.{2}//' data.txt > tmp.txt
sed -r 's/.{3}$//' tmp.txt > data.txt
rm -rf tmp.txt
