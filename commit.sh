#!/bin/bash
git add .
git commit -m "Auto commit: $(date)"
git push
echo "✅ Committed and pushed!"
