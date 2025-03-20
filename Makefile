build:
	touch out.xmpdata
	xelatex -jobname=out -shell-escape -output-driver="xdvipdfmx -z 0" jelmerdehen.tex
	exiftool -all= -overwrite_original out.pdf
	qpdf --linearize --replace-input out.pdf
	mv out.pdf jelmerdehen.pdf

clean:
	rm -fv out.* pdfa.xmpi
