FROM alpine:3.20

# update and install tex
RUN apk update && apk add texmf-dist texlive-full
RUN apk add biber

# minted dependecies
RUN apk add python3 py3-pip && pip3 install pygments

# Install inkscape
RUN apk add inkscape

# set workdir
WORKDIR /tmp/build/

# command to execute
ENTRYPOINT ["./latex-launch.sh"]

CMD ["-file-name", "main", "-out-dir", "latex_out", "-bno"]

