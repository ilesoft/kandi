pdflatex main.tex
makeindex -s main.ist -t main.glg -o main.gls main.glo
biber main
pdflatex main.tex
pdflatex main.tex
