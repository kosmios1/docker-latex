FROM alpine:3.20

# update and install tex
RUN apk update && apk add texmf-dist texlive-full
RUN apk add biber

# minted dependecies
RUN apk add py3-pygments

# Install inkscape
RUN apk add inkscape

# Install packages to make watch on files
RUN apk add inotify-tools

WORKDIR /app

COPY ./latex-launch ./latex-launch
RUN chmod +x latex-launch

# set workdir
WORKDIR /tmp/build/

RUN adduser --uid 1000 --disabled-password latex
USER latex

# command to execute
ENTRYPOINT ["/app/latex-launch"]

CMD ["-n", "main", "-o", "latex_out", "-bno", "-e", "pdflatex", "-wno"]
