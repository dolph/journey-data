#!/bin/bash
./render.sh

# This detects all uncommitted changes, but presumably this is being run in a
# clean Travis environment where the only uncommitted changes will be caused by
# render.sh
LINES_IN_DIFF=`git diff HEAD | wc -l`
if [ "$LINES_IN_DIFF" -ne "0" ] ; then
    git status
    echo 'Run "./render.sh" and commit the result.'
    exit 1
fi
