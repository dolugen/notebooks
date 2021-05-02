#!/bin/bash

./generate-toc.sh > _toc.md
cat _header.md _toc.md > README.md
