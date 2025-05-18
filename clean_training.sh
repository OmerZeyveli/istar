#!/bin/bash
# Usage: bash clean_training_only.sh data/cell1/drop30_v1/

prefix=$1

if [[ -z "$prefix" ]]; then
  echo "❌ Error: No prefix provided. Usage: bash clean_training_only.sh data/cell1/drop30_v1/"
  exit 1
fi

echo "Cleaning training-related files in: $prefix"

rm -rf "${prefix}states/"
rm -rf "${prefix}cnts-super/"
rm -rf "${prefix}cnts-super-plots/"
rm -rf "${prefix}cnts-clustered/"
rm -rf "${prefix}clusters-gene/"
rm -rf "${prefix}spots/"
rm -f  "${prefix}embeddings-gene.pickle"

echo "✅ Training-related files deleted (histology features kept)."
