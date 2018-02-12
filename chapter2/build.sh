#!/usr/bin/env bash

LLVM_CLANG_BIN=$1
LLVM_BUILD_PATH=$2

TOY_SOURCE=toy.cpp
TOY_OUTPUT=toy

if [ `$LLVM_CLANG_BIN --version | grep clang | grep -v grep | wc -l` -ne "1" ]; then
  echo "usage: $0 <LLVM_CLANG_BIN> <LLVM_BUILD_PATH>"
  exit 1
fi

if [ `$LLVM_BUILD_PATH/bin/llvm-config --version | grep 3.7 | grep -v grep | wc -l` -ne "1" ]; then
  echo "usage: $0 <LLVM_CLANG_BIN> <LLVM_BUILD_PATH>"
  exit 1
fi

$LLVM_CLANG_BIN `$LLVM_BUILD_PATH/bin/llvm-config --cxxflags --ldflags --system-libs --libs core` $TOY_SOURCE -o $TOY_OUTPUT
