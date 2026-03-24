#!/bin/bash

# Script 5: The Open Source Manifesto Generator (Unit 5)
# Author: Suyash Tripathi | Course: Open Source Software
# Chosen Software: Python

# Demonstrating alias concept:
# alias manifesto='bash ~/manifesto-generator.sh'   # You can add this in ~/.bashrc

echo "========================================================"
echo "   THE OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================================"
echo "   Share your thoughts on Free and Open Source Software"
echo "--------------------------------------------------------"
echo ""

# ===========================
#   Interactive Questions
# ===========================

read -p "1. Name one open-source tool you use every day : " TOOL

read -p "2. In one word, what does 'freedom' mean to you? : " FREEDOM

read -p "3. Name one thing you would build and share freely : " BUILD

read -p "4. Your full name (or preferred name) : " NAME

# ===========================
#   Generate Manifesto
# ===========================

DATE=$(date '+%d %B %Y')
FILENAME="manifesto_$(whoami).txt"

# Clear the file if it exists and start fresh
cat > "$FILENAME" << EOF

============================================================
          MY OPEN SOURCE MANIFESTO
============================================================

Date: $DATE
Author: $NAME
Chosen Software: Python

I believe in the power of open source. 

Every day I use $TOOL, which reminds me that software 
should be free and accessible to everyone. To me, 
freedom means $FREEDOM — the ability to study, modify, 
and improve the tools we rely on.

I am committed to the open source philosophy. 
If I could build and share one thing freely with the 
world, it would be $BUILD.

I pledge to contribute back to the community, 
respect user freedoms, and help spread the spirit 
of collaboration that makes projects like Python 
and the entire Linux ecosystem possible.

Open Source is not just about code — it is about 
freedom, sharing knowledge, and building a better future 
together.

============================================================
"Code is not just written — it is shared, improved, 
and liberated."

                                — $NAME
============================================================

EOF

# ===========================
#   Final Message
# ===========================

echo ""
echo "✅ Your personalized Open Source Manifesto has been created!"
echo "📁 Saved as: $FILENAME"
echo ""
echo "Here is your manifesto:"
echo "--------------------------------------------------------"
cat "$FILENAME"
echo "--------------------------------------------------------"
echo ""
echo "You can share this file or add the following alias to your ~/.bashrc:"
echo "   alias manifesto='bash $(pwd)/manifesto-generator.sh'"
echo ""
echo "Thank you for supporting Free and Open Source Software! 🐧"