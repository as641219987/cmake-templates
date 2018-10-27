#!/bin/bash

BIN_DIR=bin
INSTALL_DIR=$(realpath ..)/libfoo

do_clean() {
  rm -rf ${BIN_DIR}
}

do_build() {
  mkdir -p ${BIN_DIR}                            && \
  cd ${BIN_DIR}                                  && \
  cmake -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} .. && \
  make install
}

do_rebuild() {
  do_clean
  do_build 
}

usage() {
  echo "$0 [clean|rebuild]"
}

case "$1" in
	"")          do_build;;
	"clean")     do_clean;;
	"rebuild")   do_rebuild;;
	*)           usage
esac

# vim: ts=2 sw=2 et
