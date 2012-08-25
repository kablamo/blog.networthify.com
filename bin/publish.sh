#!/bin/sh

ruhoh compile && git co gh-pages && cp -r compiled/* . 

