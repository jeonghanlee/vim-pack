#!/usr/bin/env bash

declare -g SC_SCRIPT;
declare -g SC_TOP;
SC_SCRIPT=${BASH_SOURCE[0]:-${0}}
SC_TOP="$( cd -P "$( dirname "$SC_SCRIPT" )" && pwd )"

module_url="$1";shift;
module_name="$1";shift;

git submodule add "$module_url/${module_name}" "plugins/start/${module_name}"

exit
