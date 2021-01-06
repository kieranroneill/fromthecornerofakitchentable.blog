#!/usr/bin/env bash

###
# Updates the version in the package.json files.
###

source ./scripts/set_vars.sh

function update_packagejson() {
  local packagejsonstr

  if [ -f "$1" ]; then
    packagejsonstr=$(jq --arg version "$2" '.version = $version' "$1")

    echo "${packagejsonstr}" > "$1"

    printf "%b Updated %b to version %b\n" "${INFO_PREFIX}" "$2" "$1"
  fi
}

##
# Main function
##
function main() {
  set_vars

  if [ -z "$1" ]; then
    printf "%b No version was supplied.\n" "${ERROR_PREFIX}"
    exit 1
  fi

  update_packagejson package.json "$1"
  update_packagejson "${SRC_PATH}"/package.json "$1"
}

# And so, it begins...
main "$1"
