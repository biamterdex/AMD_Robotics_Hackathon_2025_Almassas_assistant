#!/bin/bash

HUGGINGFACE_TOKEN="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"


huggingface-cli login --token ${HUGGINGFACE_TOKEN} --add-to-git-credential

HF_USER=$(hf auth whoami| head -n 1)
echo $HF_USER

python examples/lekiwi/record.py