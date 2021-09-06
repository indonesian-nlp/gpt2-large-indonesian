#!/bin/bash

find . -name "*.json" -print0 |xargs -0 -n1 -I '<>' bash -c  "jq -r '\"\(.text)\n\"' '<>' > '<>'.txt"