#!/bin/bash

ignore=("create-links.sh" "README.md" "other")

for file in [a-zA-Z]* ; do
  case "${ignore[@]}" in  *$file*) continue ;; esac
  echo "Linking ~/.$file to `pwd`/$file"

  if [[ -h ~/."$file" ]] ; then
      echo "  Removing symbolic link ~/.$file"
      rm ~/."$file"
  elif [[ -a ~/."$file" ]] ; then
      echo "  ~/.$file exists. Moving it to ~/.$file.back"
      mv ~/."$file" ~/."$file".back || echo "Couldn't move ~/.$file to ~/.$file.back!"
  fi

  ln -s `pwd`/"$file" ~/."$file" || echo "  Couldn't link ~/.$file to `pwd`/$file!"
done
