filename=./main.tex

pdf:
	mkdir -p ./build
	pdflatex -output-directory build ${filename} 
	find ./build -regex ".*\(aux\|acn\|glo\|ist\|bbl\|blg\|log\|nav\|out\|snm\|toc\)$$" | xargs rm
clean:
	rm -rf build
