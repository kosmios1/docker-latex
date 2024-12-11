# Docker Latex

Simple docker image to build latex projects.

## How to build the image

```sh
docker build github.com/kosmios1/docker-latex -t docker-latex
```

## How to use

```sh
docker run --rm -v <path-to-project>:/tmp/build docker-latex:latest --file-name main --out-dir ./latex_out/ --use-biber=yes --engine pdflatex
docker run --rm -v <path-to-project>:/tmp/build docker-latex:latest -n main -o latex_out -byes -e pdflatex
```

To use the watch add the flag `--watch yes` or `-wyes` to previous commands.

### FAQ

If you want to use a custom font, just install it into your system and share the volume like this:

```sh
docker run --rm -v <path-to-project>:/tmp/build -v /usr/share/fonts:/usr/share/fonts:ro docker-latex:latest -n main -o latex_out -byes -e xelatex
```
