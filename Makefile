build:
	xelatex -jobname=out -shell-escape -output-driver="xdvipdfmx -z 0" jelmerdehen.tex
	exiftool -all=  out.pdf
	mv out.pdf jelmerdehen.pdf

clean:
	rm -fv out.* pdfa.xmpi
