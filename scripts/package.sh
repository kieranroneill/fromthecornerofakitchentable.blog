#!/usr/bin/env bash

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  set_vars

  rm -rf "${DIST_PATH}"
  printf "%b Removed previous dist directory\n" "${INFO_PREFIX}"

  # Create a new dist directory.
  mkdir "${DIST_PATH}"

  # Zip up build.
  printf "%b Compressing theme... \n" "${INFO_PREFIX}"
  zip -r -q "${DIST_PATH}"/fromthecornerofakitchentable.blog.zip "${SRC_PATH}"/*

  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main
