#!/bin/bash

HUGGINGFACE_TOKEN=""

huggingface-cli login --token ${HUGGINGFACE_TOKEN} --add-to-git-credential
HF_USER=$(huggingface-cli whoami | head -n 1)
echo $HF_USER

python lerobot/scripts/train.py \
  --dataset.repo_id=${HF_USER}/record-intron-agent_01 \
  --policy.type=act \
  --output_dir=outputs/train/act_intron-agent_01 \
  --job_name=act_so101_test \
  --policy.device=cuda \
  --wandb.enable=true 
  # --batch_size=64 \
  # --steps=200000

huggingface-cli upload ${HF_USER}/act_so101_test \
  outputs/train/act_so101_test/checkpoints/last/pretrained_model