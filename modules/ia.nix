{
  config,
  pkgs,
  inputs,
  ...
}:

{
  services.ollama = {
    enable = true;
    # package = pkgs.ollama-vulkan;   # or pkgs.ollama-cuda (NVIDIA), pkgs.ollama-rocm (AMD), pkgs.ollama-cpu (no GPU)
    package = pkgs.ollama-cpu;
    loadModels = [ "qwen2.5:7b" ];
    environmentVariables = {
      OLLAMA_MAX_LOADED_MODELS = "1"; # keep only one model in memory at a time
      OLLAMA_KEEP_ALIVE = "5m"; # free memory 5 minutes after the last request
    };
  };

  # automatically restart Ollama if it crashes (OOM or other)
  systemd.services.ollama.serviceConfig = {
    Restart = "always";
    RestartSec = 5;
  };
}
