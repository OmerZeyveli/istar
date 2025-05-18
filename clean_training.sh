#!/bin/bash
# Usage: bash clean_training_only.sh data/cell1/drop30_v1/

prefix=$1

if [[ -z "$prefix" ]]; then
  echo "❌ Error: No prefix provided. Usage: bash clean_training_only.sh data/cell1/drop30_v1/"
  exit 1
fi

echo "Cleaning training-related files in: $prefix"

rm -rf "${prefix}states/"
rm -f  "${prefix}embeddings-hist-raw.pickle"

echo "✅ Training-related files deleted (histology features kept)."
