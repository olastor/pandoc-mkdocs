#
# Minimal image for mkdocs and utilities to create a pdf from
# the content generated by mkdocs.
#
FROM python:slim

# Install pandoc and dependencies for pdf creation
RUN apt update && apt install -y pandoc texlive-xetex

RUN pip install mkdocs mkdocs2pandoc
