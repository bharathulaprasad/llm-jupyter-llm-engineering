#!/bin/bash
set -e

echo "🔧 Provisioning environment with Ansible..."
ansible-playbook /ansible/playbook.yml

echo "🚀 Starting Jupyter lab..."
source /workspace/venv/bin/activate

jupyter lab \
  --lab-dir=/workspace/llm_engineering \
  --ip=0.0.0.0 \
  --port=8888 \
  --no-browser \
  --allow-root
  --NotebookApp.token='' \
  --NotebookApp.password=''
