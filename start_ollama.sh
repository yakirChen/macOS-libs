export OLLAMA_ORIGINS=* 
export OLLAMA_NUM_PARALLEL=24 
export OLLAMA_HOST=0.0.0.0 
export OLLAMA_KEEP_ALIVE=24h
export OLLAMA_CONTEXT_LENGTH=64000
nohup ollama serve >> /Users/aino/ollama.log 2>&1 &
