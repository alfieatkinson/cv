#!/bin/bash

# Compile CV with bionic reading enabled
echo "Compiling with bionic reading..."
sed 's/#let use-bionic = false/#let use-bionic = true/' src/curriculum-vitae.typ | typst compile - dist/curriculum-vitae-bionic.pdf
if [ $? -eq 0 ]; then
    echo "✓ Created: dist/curriculum-vitae-bionic.pdf"
else
    echo "✗ Failed to compile bionic version"
fi

# Compile CV with bionic reading disabled
echo "Compiling without bionic reading..."
sed 's/#let use-bionic = true/#let use-bionic = false/' src/curriculum-vitae.typ | typst compile - dist/curriculum-vitae-standard.pdf
if [ $? -eq 0 ]; then
    echo "✓ Created: dist/curriculum-vitae-standard.pdf"
else
    echo "✗ Failed to compile standard version"
fi

echo "Done! Generated both versions in dist/"
