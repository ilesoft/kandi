# Kayta inkscapea muuntamaan svg kuvat eps kuviksi, jotka voidaan lisata suoraan
# dokumenttiin
for file in ./figures/*.svg
do
    inkscape -E ${file%.svg}.eps $file
done

mkdir -p build

pdflatex -output-directory build main.tex
makeindex -s build/main.ist -t build/main.glg -o build/main.gls build/main.glo
biber --output-directory build main
pdflatex -output-directory build main.tex
pdflatex -output-directory build main.tex
