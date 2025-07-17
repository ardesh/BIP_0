#!/bin/bash

# Clone the repository and enter its directory
git clone https://github.com/ardesh/BIP_0.git
cd BIP_0 || exit 1

# Create folder structure
mkdir shared grasshopper blender renders

# Create .gitignore with necessary patterns
cat <<EOF > .gitignore
*.tmp
*.bak
__pycache__/
EOF

# Stage changes and commit
git add .
git commit -m "Initialize repo structure and .gitignore"
git push