#!/bin/bash
PROJECT_DIR=$HOME/sdk

pushd /
echo Put all C source and header filenames from project subdirectories to a file.
find $PROJECT_DIR -name '*.c' -o -name '*.h' > $PROJECT_DIR/cscope.files
echo Rebuild the cscope database...
cd $PROJECT_DIR
cscope -b
popd
