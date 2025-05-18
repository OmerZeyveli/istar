#!/bin/bash
# Usage: bash clean_training_only.sh data/demo/

prefix=$1

if [[ -z "$prefix" ]]; then
  echo "❌ Error: No prefix provided. Usage: bash clean_training_only.sh data/demo/"
  exit 1
fi

echo "Cleaning training-related files in: $prefix"

# Comment out the embeddings-hist-raw if you want to keep the histology features. This will help retraining the model with the same histology features but different gene features.
rm -f "${prefix}embeddings-hist-raw.pickle"
rm -rf "${prefix}states/"

echo "✅ Training-related files deleted"