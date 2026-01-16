# LLM Engineering – JupyterLab Docker Setup

## Run
```bash
docker compose up --build

## NOTE
If you prefer to install ollamma in your windows host and only run the rest on docker, due to GPU limtation, here is the idea that is cool.
all localhost in your requests to ollamma should be then changed to host.docker.internal
