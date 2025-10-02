#!/bin/zsh
# Ollama服务器的URL
OLLAMA_HOST_URL="http://localhost:11434"

# 使用Ollama模型运行SWE-agent
MODEL_NAME="ollama:qwen2.5:32b"

# GitHub issue URL，用于指定要解决的问题
DATA_PATH="data/go.jsonl"

# 配置文件路径
CONFIG_FILE="config/default.yaml"

# 运行SWE-agent
uv run python run.py --model_name "$MODEL_NAME" \
--host_url "$OLLAMA_HOST_URL" \
--config_file "$CONFIG_FILE" \
--pr_file "$DATA_PATH"