#!/bin/bash
# Usage: bash clean_everything.sh data/cell1/drop30_v1/

prefix=$1

if [[ -z "$prefix" ]]; then
  echo "❌ Error: No prefix provided. Usage: bash clean_everything.sh data/cell1/drop30_v1/"
  exit 1
fi

echo "Deep cleaning: $prefix"

rm -rf "${prefix}states/"
rm -rf "${prefix}cnts-super/"
rm -rf "${prefix}cnts-super-plots/"
rm -rf "${prefix}cnts-clustered/"
rm -rf "${prefix}clusters-gene/"
rm -rf "${prefix}spots/"
rm -f  "${prefix}embeddings-gene.pickle"
rm -f  "${prefix}embeddings-hist.pickle"
rm -f  "${prefix}embeddings-hist-raw.pickle"
rm -f  "${prefix}mask-small.png"

echo "✅ All iStar-related files deleted, including histology features."
