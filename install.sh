#!/usr/bin/env bash

set -e;

ql_cyan='\033[1;36m'
ql_green='\033[1;32m'
ql_no_color='\033[0m'

cd "$HOME"

curl -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/FellowshipOfThePing/j-utils/master/.j_utils" \
--output "$HOME/.j_utils"

echo "";
echo -e "${ql_green}=> j_utils download succeeded.${ql_no_color}";
echo -e "${ql_cyan}=> To complete installation of 'j_utils' add the following line to your .zshrc file:${ql_no_color}";
echo ". ~/.j_utils";  # `.` is like `source` but more cross-platform
echo "";
