#!/bin/bash

./generate-toc.sh > _toc.md
cat _pre_toc.md _toc.md _post_toc.md > README.md
