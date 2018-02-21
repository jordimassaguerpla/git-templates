#!/bin/bash
echo $#
if [ $# != 1 ];then
  echo "usage $0 git_dir"
exit -1
fi
if [ ! -d $1/.git ];then
  echo "usage $0 git_dir"
  exit -2
fi

if [ ! -d $1/.git/hooks ];then
  mkdir $1/.git/hooks
  if [ $? != 0 ];then
    echo "error creating $1/.git/hooks"
    exit -3
  fi
fi

cp -v hooks/* $1/.git/hooks

