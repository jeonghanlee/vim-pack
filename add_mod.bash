#!/usr/bin/env bash

declare -g SC_SCRIPT;
declare -g SC_TOP;
SC_SCRIPT=${BASH_SOURCE[0]:-${0}}
SC_TOP="$( cd -P "$( dirname "$SC_SCRIPT" )" && pwd )"

module_url="$1";shift;
target_path="$1";shift;

git submodule add "$module_url" "${SC_TOP}/plugins/start/${target_path}"

exit
