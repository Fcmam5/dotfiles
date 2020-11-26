#!/bin/bash

# VS Code packages
pkglist=(
Arjun.swagger-viewer
dbaeumer.vscode-eslint
eamodio.gitlens
golang.go
Gruntfuggly.todo-tree
ms-vsliveshare.vsliveshare
Orta.vscode-jest
streetsidesoftware.code-spell-checker
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done