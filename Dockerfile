# Based on https://github.com/Backfighter/pandoc-mkdocs
FROM python:slim

ENV PANDOC_VERSION "2.1.3"
ENV DOWNLOAD_URL "http://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-amd64.deb"

RUN apt-get update && apt-get install -qy wget texlive-full

RUN wget $DOWNLOAD_URL -O pandoc.deb && \
    dpkg -i pandoc.deb && rm pandoc.deb

# Clean up unused packages
RUN apt-get remove -qy wget && apt-get clean
