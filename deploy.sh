#!/bin/sh
hexo clean
hexo generate
echo "params: ${#}"
if [ $# -gt 0 ]
then
    # echo "deploying on github"
    hexo deploy
else
    echo "hexo is running at localhost"
    hexo server
fi

