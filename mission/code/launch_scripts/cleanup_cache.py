import torch
import gc

# 1. Delete unused variables
# del model
# del optimizer

# 2. Clear PyTorch cache
torch.cuda.empty_cache()

# 3. Run Python garbage collection
gc.collect()
