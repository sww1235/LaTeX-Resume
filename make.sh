#! /bin/bash

ls -1 ~/Personal/job-career-stuff/job-search-winter-2018-2019/company-specific-cover-letters/*.tex > inputs.txt

while read file
do
  filename="$(basename -s ".tex" "$file")"
  echo $filename
  mkdir $filename
  pdflatex -interaction=batchmode -jobname "Stephen Walker-Weinshenker-Resume-$filename" -output-directory "$filename" "\def\coverLetter{$file} \input{LaTeX-Resume.tex}"
done < inputs.txt
