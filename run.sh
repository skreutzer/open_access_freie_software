#!/bin/sh

rm -f ./out/open_access_freie_software.html
rm -f ./out/open_access_freie_software.epub
rm -f ./out/open_access_freie_software.tex
rm -f ./out/open_access_freie_software.pdf

java -classpath ./automated_digital_publishing/workflows/ odt2all1 ./odt2all1_config.xml ./out/ > out.log 2>&1 | tee out.log

mv -f ./out/out.html ./out/open_access_freie_software.html
mv -f ./out/out.epub ./out/open_access_freie_software.epub
mv -f ./out/out.tex ./out/open_access_freie_software.tex
mv -f ./out/out.pdf ./out/open_access_freie_software.pdf
