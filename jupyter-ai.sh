#!/bin/bash
# install packages for jupyter-ai
if [[ "$ENABLE_JUPYTER_AI_EXTENSION" == "true" ]]; then
    uv pip install --system --no-cache jupyter-ai langchain-ollama langchain-openai
fi
