#!/usr/bin/env bash

###
# Build the distribution.
###

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  set_vars

  # Delete the build directory.
  rm -rf "${BUILD_PATH}"
  printf "%b Removed build directory.\n" "${INFO_PREFIX}"

  # Now recreate!
  mkdir "${BUILD_PATH}"/

  printf "%b Copying files...\n" "${INFO_PREFIX}"
  cp -r "${SRC_PATH}"/* "${BUILD_PATH}"/

  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main
