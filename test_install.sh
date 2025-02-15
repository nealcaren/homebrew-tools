#!/bin/bash

# Uninstall all formulas in the tap
for formula in $(ls Formula/*.rb); do
    formula_name=$(basename "$formula" .rb)
    echo "Uninstalling $formula_name..."
    brew uninstall "$formula_name" || true
done

# Untap the repository
echo "Untapping nealcaren/tools..."
brew untap nealcaren/tools || true

# Tap the repository again
echo "Tapping nealcaren/tools..."
brew tap nealcaren/tools

# Install each formula
for formula in $(ls Formula/*.rb); do
    formula_name=$(basename "$formula" .rb)
    echo "Installing $formula_name..."
    brew install "$formula_name"
    if [ $? -ne 0 ]; then
        echo "Error installing $formula_name"
        exit 1
    fi
done

echo "All formulas installed successfully!"
