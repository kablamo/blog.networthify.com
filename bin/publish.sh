#!/bin/sh

ruby -I /home/eric/code/ruhoh.rb/lib /home/eric/code/ruhoh.rb/bin/ruhoh compile && \
git co gh-pages && \
cp -r compiled/* . && \
rm -r compiled && \
git add -A && \
git status && \
git commit -a -m 'More' && \
git push && \
git co master && \
git push && \
git branch

