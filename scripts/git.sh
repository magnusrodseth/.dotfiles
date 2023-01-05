#!/bin/bash

# Set git user
[ -z `git config --global user.name` ] && git config --global user.name "Magnus Rødseth"
[ -z `git config --global user.email` ] && git config --global user.email "magnus.rodseth@gmail.com"
