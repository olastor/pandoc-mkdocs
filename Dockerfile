#
# Minimal image for mkdocs and utilities to create a pdf from
# the content generated by mkdocs.
#
FROM python:slim

# Install pandoc and dependencies for pdf creation and git for the phyton script
RUN apt update && apt install -qy pandoc texlive-xetex git imagemagick

RUN pip install mkdocs && pip install git+https://github.com/backfighter/mkdocs-combine.git
# Git is not needed we reduce the size a little bit
RUN apt remove -qy git
