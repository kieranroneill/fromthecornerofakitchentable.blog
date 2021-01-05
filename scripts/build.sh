#!/usr/bin/env bash

###
# Build the distribution.
###

source ./scripts/set_vars.sh

##
# Main function
##
function main() {
  local version

  set_vars

  version=$(awk -F'"' '/"version": ".+"/{ print $4; exit; }' package.json)

  # If the version argument exists, use it.
  if [ -n "$1" ]; then
    version="$1"
  fi

  # Delete the build directory.
  "${BIN_PATH}"/rimraf "${BUILD_PATH}"
  printf "%b Removed build directory.\n" "${INFO_PREFIX}"

  # Now recreate!
  mkdir "${BUILD_PATH}"/

  printf "%b Copying files...\n" "${INFO_PREFIX}"
  cp -r src/* "${BUILD_PATH}"/

  printf "%b Updating to version %b\n" "${INFO_PREFIX}" "${version}"
  cd "${BUILD_PATH}" && npm version "${version}" --allow-same-version

  printf "%b Done!\n" "${INFO_PREFIX}"
}

# And so, it begins...
main "$1"
