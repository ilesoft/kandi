# Kayta inkscapea muuntamaan svg kuvat eps kuviksi, jotka voidaan lisata suoraan
# dokumenttiin
for file in ./figures/*.svg
do
    inkscape -E ${file%.svg}.eps $file
done


pdflatex main.tex
makeindex -s main.ist -t main.glg -o main.gls main.glo
biber main
pdflatex main.tex
pdflatex main.tex
