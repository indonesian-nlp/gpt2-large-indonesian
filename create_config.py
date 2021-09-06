from transformers import GPT2Config

model_dir = "/home/cahya/Work/gpt2-large-indonesian"  # ${MODEL_DIR}

config = GPT2Config.from_pretrained("gpt2-large", resid_pdrop=0.0, embd_pdrop=0.0, attn_pdrop=0.0)
config.save_pretrained(model_dir)
