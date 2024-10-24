# Docker Latex

Simple docker image to build latex projects.

## How to use 

First create the folder where you want to output build output:
```
mkdir ./latex_out/
```

Then:
```
docker run --rm -v <path-to-project>:/tmp/build my-latex:latest --file-name main --out-dir ./latex_out/ --use-biber=yes
docker run --rm -v <path-to-project>:/tmp/build my-latex:latest -n main -o latex_out -byes
```

