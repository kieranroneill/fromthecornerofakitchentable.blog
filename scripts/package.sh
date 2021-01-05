#!/usr/bin/env bash

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  set_vars

  if [ ! -d "${BUILD_PATH}" ]; then
    printf "%b No \"build\" directory exists. Have you run \"./scripts.build.sh\"? \n" "${ERROR_PREFIX}"
    exit 1
  fi

  if [ -d "${DIST_PATH}" ]; then
    printf "%b Removing previous dist directory... \n" "${INFO_PREFIX}"
    "${BIN_PATH}"/rimraf "${DIST_PATH}"
  fi

  # Create a new dist directory.
  mkdir "${DIST_PATH}"

  # Zip up build.
  printf "%b Compressing theme... \n" "${INFO_PREFIX}"
  zip -r -q "${DIST_PATH}"/fromthecornerofthekitchentable.blog.zip "${BUILD_PATH}"/*

  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main