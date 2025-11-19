#!/bin/bash

run_cmd() {
    cmd="ls $1"
    eval $cmd
}

echo "옵션을 입력하세요 (예: -l, -a): "
read opt

run_cmd $opt
