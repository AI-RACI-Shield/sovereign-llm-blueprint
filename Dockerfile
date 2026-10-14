# Sovereign Enterprise LLM Inference Node Blueprint
# Distributed under the Apache License 2.0 (Commercial utilization permitted)
FROM vllm/vllm-openai:v0.4.2

# Set corporate perimeter hardware routing vectors
ENV CUDA_VISIBLE_DEVICES=0
ENV VLLM_ENGINE_ITERATION_TIMEOUT_S=60

# Expose production telemetry and local API endpoints
EXPOSE 8000
EXPOSE 9090

# Standard execution command for local high-availability infrastructure
ENTRYPOINT ["python3", "-m", "vllm.entrypoints.openai.api_server"]

# Default runtime parameters for high-availability enterprise models
CMD ["--model", "meta-llama/Meta-Llama-3-70B-Instruct", "--gpu-memory-utilization", "0.85", "--max-model-len", "8192"]
