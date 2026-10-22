# Sovereign Enterprise LLM Inference Node Blueprint
# Copyright (c) 2026 AI-RACI-Shield. All rights reserved.
FROM vllm/vllm-openai:v0.4.2

# Set corporate perimeter environment settings
ENV VLLM_ENGINE_ITERATION_TIMEOUT_S=60

# Expose production telemetry and local API endpoints
EXPOSE 8000
EXPOSE 9090

# Standard execution command for local high-availability infrastructure
ENTRYPOINT ["python3", "-m", "vllm.entrypoints.openai.api_server"]

# Default runtime parameters for high-availability enterprise models
CMD ["--model", "meta-llama/Meta-Llama-3-70B-Instruct", "--gpu-memory-utilization", "0.85"]
