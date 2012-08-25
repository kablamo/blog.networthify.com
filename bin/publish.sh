#!/bin/sh

ruhoh compile && git co gh-pages && cp -r compiled/* . && rm -r compiled && git add -A && git st

