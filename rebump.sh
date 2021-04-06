#!/bin/bash

printf "\n\n"
echo -e "\033[1;36m"
echo "#####################################################"
echo -e "##########🧬️\033[m AppSpotr Documentation \033[1;36m🧬##############"
echo "#####################################################"
echo -e "\033[m"
printf "\n"

BASE_STRING=`cat VERSION`
echo -e "Current version: \033[1m$BASE_STRING\033[m"

read -p "Are you sure you want to re-tag (yes): " INPUT_STRING
if [ "$INPUT_STRING" == "yes" ]; then
  printf "\n re-tagging..."

  git push origin :refs/tags/"v$BASE_STRING"

  git tag --delete "v$BASE_STRING"

  echo "⚙️ Tagging..."
  git tag -a -m "Tagging version $BASE_STRING" "v$BASE_STRING"

  git push origin "v$BASE_STRING"

  printf "\n"
  echo "✅️ Tag pushed"

  exit 0
fi

printf "\n stopping..."
