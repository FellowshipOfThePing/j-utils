#!/usr/bin/env bash

set -e;

ql_cyan='\033[1;36m'
ql_green='\033[1;32m'
ql_no_color='\033[0m'

cd "$HOME"

# Download utils file to local machine
curl -H 'Cache-Control: no-cache' "https://raw.githubusercontent.com/FellowshipOfThePing/j-utils/master/.j_utils" \
--output "$HOME/.j_utils"

# Import utils file to .zshrc
if ! grep -qF ". ./.j_utils" ~/.zshrc ; 
then 
  echo >> ~/.zshrc;
  echo "# Import j-utils commands" >> ~/.zshrc;
  echo ". ./.j_utils" >> ~/.zshrc;
fi

# Prompt user
echo "";
echo -e "${ql_green}=> j_utils download succeeded.${ql_no_color}";
echo "";

