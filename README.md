# Docker Latex

Simple docker image to build latex projects.

## How to use 

First create the folder where you want to output build output:
```
mkdir ./latex_out/
```

Then:
```
docker run --rm -v <path-to-project>:/tmp/build docker-latex:latest --file-name main --out-dir ./latex_out/ --use-biber=yes --engine pdflatex
docker run --rm -v <path-to-project>:/tmp/build docker-latex:latest -n main -o latex_out -byes -e pdflatex
```

### FAQ

If you want to use a custom font, just install it into your system and share the volume like this:
```
docker run --rm -v <path-to-project>:/tmp/build -v /usr/share/fonts:/usr/share/fonts:ro docker-latex:latest -n main -o latex_out -byes -e xelatex
```
