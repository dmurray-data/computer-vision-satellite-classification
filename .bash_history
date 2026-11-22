python --version
which python
conda activate ds
which python
mamba install -c conda-forge -y numpy pandas scipy scikit-learn statsmodels pyarrow polars duckdb sqlalchemy matplotlib plotly jupyterlab ipykernel requests tqdm joblib pytest ruff black pre-commit
python -c "import numpy,pandas,scipy,sklearn,polars,duckdb; print('core data science stack OK')"
python -m ipykernel install --user   --name ds   --display-name "Python (Data Science)"
jupyter kernelspec list
jupyter lab --version
python -c "import numpy,pandas,scipy,sklearn,polars,duckdb,matplotlib; print('Jupyter/data science environment OK')"
/home/dmdgxs/projects/portfolio
clear
conda deactivate
mamba create -n rapids   -c rapidsai   -c conda-forge   -c nvidia   rapids=26.06   python=3.12   'cuda-version=13.0'   jupyter   hdbscan   umap-learn   -y
conda activate rapids
which python
python --version
python - <<'PY'
import cudf

print("cuDF version:", cudf.__version__)

df = cudf.DataFrame({
    "x": [1, 2, 3, 4],
    "y": [10, 20, 30, 40]
})

print(df)
print("Mean y:", df["y"].mean())
PY

python - <<'PY'
import cuml
from cuml.linear_model import LinearRegression

print("cuML version:", cuml.__version__)
print("cuML loaded successfully")
PY

python - <<'PY'
import cupy as cp

x = cp.arange(10_000_000, dtype=cp.float32)

print("Array device:", x.device)
print("Mean:", x.mean())
PY

python -m ipykernel install   --user   --name rapids   --display-name "Python (RAPIDS GPU)"
jupyter kernelspec list
exit
clear
cd ~/projects/portfolio
mkdir -p project-00-spark-validation/{notebooks,src,data/raw,data/processed,reports/figures,tests}
cd project-00-spark-validation
touch README.md .gitignore
touch data/raw/.gitkeep data/processed/.gitkeep
git init
find . -maxdepth 3 -type d -o -type f | sort
nano .gitignore
cat .gitignore
clear
cd ~/projects/portfolio/project-00-spark-validation
conda activate ds
conda env export --from-history > environment.yml
ls
cd /
cd ~
conda deactivate ds
conda deactivate
conda activate rapids
conda env export --from-history > environment-rapids.yml
cd
ls
rm enviornment-rapids.yml
rm environment-rapids.yml
cd ~/projects/portfolio/project-00-spark-validation
conda env export --from-history > environment-rapids.yml
ls
ls -lh
git status
git add .
git commit -m "Initialize DGX Spark data science validation project"
git remote add origin git@github.com:dmurray-data/project-00-spark-validation.git
git branch -M main
git push -u origin main
import.sys
ls
cd..
cd
cd Documents
cd..
cd ..
clear
nvidia-smi
ls
git status
exit
tailscale status
tailscale ip -4
nvidia-smi
exit
nvidia-smi
pytorch --version
transformers --version
clear
exit
clear
nvidia-smi
ls
ls -lh
clear
exit
mkdir -p ~/datasets/nyc-taxi/2025
ls -lh ~/datasets/nyc-taxi/2025/
exit
cd ~/projects/portfolio/project-00-spark-validation
conda activate ds
ls -lh ~/datasets/nyc-taxi/2025/
git status
git add .
git status
git commit -m "Add NYC taxi data inspection and cleaning analysis"
git push
git status
git add .
git commit -m "title for notebook"
git push
git status
exit
cd ~/projects/portfolio/project-00-spark-validation
git status
git add .
git commit -m "Add full-year NYC taxi preparation pipeline"
git push
clear
ls
exit
git status
ls
cd projects
ls
cd portfolio
ls
cd project-00-spark-validation
git status
git add .
git commit -m "Add initial pandas and cuDF benchmark results"
git push
git status
clear
exit
cd ~/projects/portfolio/project-00-spark-validation
git status
git add .
git commit -m "Add full-year NYC taxi preparation pipeline"
git push
git status
nvidia-smi
ls
clear
cd datasets/nyc-taxi/2025
ls
ls -lh
yellow_tripdata_2025-??.parquet | wc -1
yellow_tripdata_2025-??.parquet | wc -l
ls yellow_tripdata_2025-??.parquet | wc -l
ls
cd datasets
ls
cd ..
cd projects
clear
ls
cd portfolio
ls
cd project-00-spark-validataion
cd project-00-spark-validation
clear
ls -lh
git status
echo "notebooks/cufile.log" >> .gitignore
git status
git add .gitignore reports/
git commit -m "Add repeated benchmark results for CPU"
git rm --cached notebooks/cufile.log
git push
git status
git add -A
git status
grep cufile .gitignore
git commit -m "Separate CPU and GPU benchmark workflows"
git push
ls
cd reports
ls
rm cudf_benchmark_runs.csv
ls
cd ..
git status
git add -A
sit status
git status
git commit -m "Clean up benchmark workflow and remove failed GPU results"
git push
clear
cd reports ls -lh
cd reports
ls -lh
clear
git status
git add .
git commit -m "Add repeated RAPIDS GPU benchmark results"
git push
git status
cd ..
git status
git add .
git commit -m "Add repeated RAPIDS GPU benchmark results notebook"
git push
git status
clear
git status
git add .
git commit -m "Analysis notebook and comparison csv and speedup plot"
git push
git status
clear
git status
clear
nvidia-smi
celar
clear
ls
cd projects
ls
cd portfolio
ls
cd project-00-spark-validation
clear
ls -lh
git status
git add .
git commit -m "Basic README file added"
git push
git status
clear
git status
git add .
git commit -m "comments added"
git push
git status
clear
git status
clear
ls
cd projects
ls
cd portfolio
ls
cd project-00-spark-validation
git status
git add .
git commit -m "02 basic comments"
git push
git status
ls
cd projects
ls
cd portfolio
ls
cd project-00-spark-validation
git status
git add .
git commit -m "00 simple comments for blocks"
git push
git status
clear
git status
git add .
git commit -m "01 simple comments added"
git push
git status
ls
cd projects/portfolio
ls
cd project-00-spark-validation
git status
git add .
git commit -m "03 comments"
git push
git status
git add .
git commit -m "04 comments"
git push
ls
cd projects
ls
cd portfolio
ls
cd project-00-spark-validation
ls
git status
git add .
git commit -m "05 comments"
git push
cd ~/projects
mkdir deep-learning-tabular
cd deep-learning-tabular
git init
touch README.md
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*.egg-info/

# Jupyter
.ipynb_checkpoints/

# Environments
.env
.venv/
venv/

# Data
data/raw/
data/processed/

# Results that may become large
results/models/

# OS/editor
.DS_Store
.vscode/
EOF

ls -la
ls
ls -lh
ls -la
git add .
git commit -m "Initialize deep learning tabular project"
git remote add origin https://github.com/dmurray-data/deep-learning-tabular.git
git branch -M main
git push -u origin main
git remote add origin https://github.com/dmurray-data/deep-learning-tabular.git
git branch -M main
git push -u origin main
git remote set-url origin git@github.com:dmurray-data/deep-learning-tabular.git
git remote -v
git push -u origin main
conda create -n pytorch python=3.12 -y
ls
conda activate pytorch
python --version
which python
python -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cu130
python -c "import torch; print('PyTorch:', torch.__version__); print('CUDA available:', torch.cuda.is_available()); print('PyTorch CUDA:', torch.version.cuda)"
python -c "import torch; print(torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'No CUDA GPU detected')"
mkdir -p notebooks src data/raw data/processed results/figures results/metrics
ls
touch notebooks/pytorch_foundations.ipynb
touch src/__init__.py
touch src/data.py
touch src/models.py
touch src/train.py
touch src/evaluate.py
ls
python -m pip install jupyterlab ipykernel
python -m ipykernel install --user --name pytorch --display-name "Python (PyTorch)"
tree
sudo apt install tree
tree
git status
git add .
git commit -m "file struct setup, notebook tensor test"
git push
git status
cd
ls
cd projects
ls
cd deep-learning-tabular
ls
git status
git add .
git commit -m "simple comments on tensors"
git push
git status
ls
cd projects/deep-learning-tabular
ls -lh
git status
git add .
git commit -m "notebook tensor basics experimentation"
git push
git status
cd projects/deep-learning-tablular
ls
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "basics through matrix multiplication"
git push
git status
git add .
git commit -m "shape rule and basic deep learning"
git push
git status
ls
cd projects
ls
cd deep-learning-tabular
ls
git status
git add .
git commit -m "how to move tensors from CPU to GPU"
git push
git status
ls
cd projects
ls
cd deep-learning-tabular
ls
git status
git staus
sit status
git status
git add .
git commit -m "autograd basics"
git push
git status
cd projects
ls
cd deep-learning-tabular
ls
git status
git add .
git commit -m "added manual training loop notebook and defined the goal of the notebook"
git push
git status
git add .
git commit -m "simple training data added x, y"
git push
git status
cd projects
ls
cd deep-learning-tabular
ls
git status
git add .
git commit -m "added starting values and made manual matrix multiplication predictions"
git push
git status
cd projects
ls
ls -lh
ls -la
cd deep-learning-tabular
git status
git add .
git commit -m "single loss calculation and gradient adjustment, single manual gradient descent cycle example"
git push
git status
git add .
git commit -m "comments"
git push
git status
git add .
git commit -m "added start of optimizer section"
git push
git status
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "loop function with SGD optimizer"
git push
git status
git add .
git commit -m "added adam optimized test loop for comparison to sgd"
git push
git status
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "testing ssh compatibility"
git push
hostname
uptime
free -h
df -h
ps aux --sort=-%mem | head -15
exit
cd projects/deep-learning-tabular
git status
git add .
git commit -m "tested different learning rates for adam, added important takeaways from sgd and adam as optimizers"
git push
git status
git add .
git commit -m "new notebook for model and dataloader learning, defined goal, imported tools, created simple dataset, defined basic model"
git push
git status
ls
cd projects/deep-learning-tabular
git status
git add .
git commit -m "dataset, dataloader, batch creation and learning, test learning fuction"
git push
cd projects/deep-learning-tabular
git status
git add .
git commit -m "proceeded with test and training split making use of the gpu if available, added learning notes, will continue with comparing sgd and adam optimizers next"
git push
git status
git add .
git commit -m "added adam optimizer test with aggressive .01 learning rate and 500 epoch loop, noted too coarse"
git push
git status
git add .
git commit -m "tested adam optimizer at lr .001 with 1500 epochs"
git push
git status
cd projects/deep_learning_tabular
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "multilayer neural network learning notebook created, goals defined, nonliner randomized dataset created"
git push
git status
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "training test split"
git push
git status
clear
git status
git add .
git commit -m "define neural network architecture"
git push
git status
git add .
git commit -m "added comments to neural net archetecture"
git push
cd projects/deep-learning-tabular
git status
git add .
git commit -m "initial training loop with adam optimizer, notes about loss"
git push
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "plot neural net output against observed data to examine overfitting. matplotlib run on cpu, requires moving data back and fourth, compute on gpu plot on cpu"
git push
git status
git add .
git commit -m "comments to initial neural net/observed data compare and plot"
git push
cd projects/deep-learning-tabular
git status
git add .
git commit -m "overfitting experiment"
git push
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "notes on overfitting"
git push
git status
clear
git status
git add .
git commit -m "early stopping excercise"
git push
git status
git add .
git commit -m "plot early stopping"
git push
git status
clear
git status
git add .
git commit -m "early stopping notes"
git push
git status
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "weight decay experiment, setup and training loop"
git push
git status
git add .
git commit -m "move saved runs to cpu and plot weight decay training runs"
git push
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "testing varying levels of weight decay and the results in plot"
git push
git status
git add .
git commit -m "testing more weight gradient values, and what expectations were notes"
git push
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "regularization and training control notebook creation, goal and topics stated"
git push
git status
git add .
git commit -m "noisy dataset created, train/validation split done"
git push
cd projects/deep-learning-tabular
git status
clear
git status
git add .
git commit -m "finished setup, set device to gpu for processing in experiments"
git push
git status
clear
git status
git add .
git commit -m "
git status
git commit -m "defined dropout nn, created model"
git push
clear
git status
clear
git status
git add .
git commit -m 
git commit -m "added training loop for dropout"
git push
git status
clear
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "dropout model plots"
git push
git status
clear
git status
git add .
git commit -m "notes on dropout method"
git push
clear
git status
clear
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "start batch normalization section, made header, created fresh model to follow proper batch normalization neural net pattern"
git push
clear
git status
clear
git status
git add .
git commit -m "created model, training loop, and plotted losses and learning curve."
git push
clear
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "learning rate scheduling learning section, new dataset, optimizer settings, training loop"
git push
clear
git status
git add .
git commit -m "plot learning rate, plot loss, added notes on learning rate scheduling"
git push
git status
clear
git status
git add .
git commit -m "training pipeline notebook created and goals defined"
git push
clear
cd projects/deep-learning-tabular
clear
git status
clear
git add .
git commit -m "added reusable training function"
git push
clear
git status
clear
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "batch normalization attempt with issues to resolve"
git push
git status
clear
git status
git add .
git commit -m "added neural network, added data, ran batch normalization with the copyable function, plotted results, saved history"
git push
clear
git status
cd projects/deep_learning_tabular
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "data loading for project notebook created and goals defined"
git push
clear
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "source for project found and urrl added"
git push
git status
clear
conda activate pytorch
python -m pip install ucimlrepo pandas pyarrow scikit-learn matplotlib
git status
clear
cd projects/deep-learning-tabular
clear
git status
clear
git add .
git commit -m "added dataset and general inspection of the dataset"
git push
clear
git status
clear
git status
clear
git add .
git commit -m "missing values check"
git commit
git push
git status
clear
git status
clear
git add .
git commit -m "checked date and time range, combined date and time into one feature"
git push
git status
clear
git status
clear
git status
git add .
git commit -m "converted measurement cols to numeric, sorted by datetime, checked for dupe timestamps, checked for missing timestamps, checked if there was a pattern of the missing values"
git push
git status
clear
git status
clear
git add .
git commit -m "checked pattern of missing values, based on pattern at this point no values were dropped more details and explaination in comments, also confirmed no missing or dupe timestamps"
git push
cd projects
cd deep-learning-tabular
clear
git status
git add .
git commit -m "saved ingested, inspected, and validated dataset to local parquet file"
git push
clear
git status
clear
git status
git add .
git commit -m "created eda notebook for real dataset, defined goal and questionts to answer"
git push
clear
htop
cd project
ls
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "added parquet data set from 01 into 02 for eda"
git push
clear
git status
clear
git status
git add .
git commit -m "inspected global active power, checked missing, and plotted distribution"
git push
git status
clear
git status
git add .
git commit -m "inspected and plotted timeseries with global active power, expanded plot for first seven days, added things to pay attlention to"
git push
git status
clear
cd ~/projects
git clone git@github.com:dmurray-data/data-science-learning-log.git
cd data-science-learning-log
mkdir -p 2026
mkdir -p notes/machine-learning
mkdir -p notes/deep-learning
mkdir -p notes/statistics
mkdir -p notes/sql
mkdir -p notes/linear-algebra
touch 2026/october.md
touch resources.md
git status
git add.
git add .
git commit -m "file structure for learning log repo"
git push
ls
cd 2026
ls
nano october.md
cd ~/projects
git clone git@github.com:dmurray-data/data-science-learning-log.git
cd data-science-learning-log
git status
git pull
ls
cd 2026
nano october.md
cd projects/deep-learning-tabular
clear
git status
git add .
git commit -m "aggrigated full dataset and plotted, examined hour of day behaior with plot, examined day of week behavior with plot, looked at monthly pattern with plot, added notes and reaffirmed goals"
git push
cd
clear
cd ~/projects/data-science-learning-log
git pull
nano 2026/october.md
git status
git add .
git commit -m "document eda stage examining different groupings of time series data i.e day, month, year log entry pertaining to deep learning project 01"
git push
git status
clear
cd
clear
cd projects/deep-learning-tabular
clear
git status
clear
git add .
git commit -m "examined electrical measurement relationships, corr matrix, scatter plots, scatter plots against active power"
git push
clear
cd
cd projects
ls
cd data-science-learning-log
ls
cd 2026
nano october.md
git pull
git add 2026/october.md
git commit -m "Log electrical relationship EDA"
git push
git status
git add .
git commit -m "Log electrical relationship EDA"
git push
git status
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "lag analysis and time persistence for 60 minute future forcast"
git push
cleear
clear
git status
clear
cd
clear
cd
cd projects
ls
cd data-science-learning-log
cd 2026
cleaR
clear
nano october.md
git add .
git commit -m "log power lag correlation analysis"
git push
git status
clear
cd
exit
cd projects/deep-learning-tabular
git status
git add .
git commit -m "examined current vs power 60 min in future and plotted, notes taken on analysis, also checked daily persistence in household power and plotted, added df for adjusting lag to same clock time yesterday relative to forcast target"
git push
clear
curl http://localhost:8000/v1/models
curl http://localhost:8000/v1/chat/completions   -H "Content-Type: application/json"   -d '{
    "model": "nvidia/Gemma-4-26B-A4B-NVFP4",
    "messages": [
      {
        "role": "user",
        "content": "Introduce yourself briefly and explain what a black hole is in simple terms."
      }
    ],
    "temperature": 0.7,
    "max_tokens": 300
  }'
time curl -s http://localhost:8000/v1/chat/completions   -H "Content-Type: application/json"   -d '{
    "model": "nvidia/Gemma-4-26B-A4B-NVFP4",
    "messages": [
      {
        "role": "user",
        "content": "Explain how a CPU, GPU, RAM, and storage work together in a modern computer. Give a clear but moderately detailed explanation."
      }
    ],
    "temperature": 0.7,
    "max_tokens": 600
  }' > /tmp/gemma-test.json
python3 - <<'PY'
import json

with open("/tmp/gemma-test.json") as f:
    d = json.load(f)

print("Prompt tokens:    ", d["usage"]["prompt_tokens"])
print("Completion tokens:", d["usage"]["completion_tokens"])
print("Total tokens:     ", d["usage"]["total_tokens"])
print("Finish reason:    ", d["choices"][0]["finish_reason"])
PY

python3 - <<'PY'
import json

with open("/tmp/gemma-test.json") as f:
    d = json.load(f)

print(d["choices"][0]["message"]["content"])
PY

python3 - <<'PY'
import json

with open("/tmp/gemma-test.json") as f:
    d = json.load(f)

print(d["choices"][0]["message"]["content"])
PY

curl http://localhost:8000/v1/models
llm-stop
docker ps
which llm-stop
~/llm/scripts/llm-stop
docker ps
echo 'export PATH="$HOME/llm/scripts:$PATH"' >> ~/.bashrc
source ~/.bashrc
which llm-stop
which gemma-start
docker ps
docker run -d   --name open-webui   --restart unless-stopped   -p 3000:8080   -v open-webui:/app/backend/data   --add-host=host.docker.internal:host-gateway   ghcr.io/open-webui/open-webui:main
docker ps
llm-stop
docker ps
curl http://localhost:8000/v1/models
curl http://localhost:8000/v1/chat/completions   -H "Content-Type: application/json"   -d '{
    "model": "nvidia/Qwen3.6-35B-A3B-NVFP4",
    "messages": [
      {
        "role": "user",
        "content": "Explain the difference between a Python list and a NumPy array, and give a short example showing why NumPy is useful for numerical computing."
      }
    ],
    "temperature": 0.4,
    "max_tokens": 500
  }'
time curl -s http://localhost:8000/v1/chat/completions   -H "Content-Type: application/json"   -d '{
    "model": "nvidia/Qwen3.6-35B-A3B-NVFP4",
    "messages": [
      {
        "role": "user",
        "content": "Explain what vectorization means in NumPy, why it is usually faster than Python loops, and show a concise example."
      }
    ],
    "temperature": 0.3,
    "max_tokens": 600
  }' > /tmp/qwen-test.json
python3 - <<'PY'
import json

with open("/tmp/qwen-test.json") as f:
    d = json.load(f)

print("Prompt tokens:    ", d["usage"]["prompt_tokens"])
print("Completion tokens:", d["usage"]["completion_tokens"])
print("Total tokens:     ", d["usage"]["total_tokens"])
print("Finish reason:    ", d["choices"][0]["finish_reason"])
PY

python3 - <<'PY'
import json

with open("/tmp/qwen-test.json") as f:
    d = json.load(f)

print(d["choices"][0]["message"]["content"])
PY

docker ps
docker ps --format 'table {{.Names}}\t{{.Status}}'
docker ps
docker logs -f gemma4
docker logs -f qwen36
llm-stop
docker ps
cd projects
ls
cd data-science-learning-log
ls
cd 2026
ls
nano october.md
git status
git add .
git commit -m "log household power persistence eda"
git push
cd
clear
[200~uname -m
nvidia-smi
docker ps
docker --version
df -h /
free -h
uname -m
nvidia-smi
docker ps
docker --version
df -h /
free -h
hf auth whoami
curl -LsSf https://hf.co/cli/install.sh | bash
source ~/.bashrc
hf --version
hf auth login
hf auth whoami
mkdir -p ~/llm/{scripts,config,logs}
mkdir -p ~/llm/cache/huggingface
nano ~/llm/config/env.sh
source ~/llm/config/env.sh
echo $HF_HOME
echo $HUGGINGFACE_HUB_CACHE
echo 'source ~/llm/config/env.sh' >> ~/.bashrc
tree ~/llm
export VLLM_IMAGE=vllm/vllm-openai:nightly
docker pull "$VLLM_IMAGE"
docker images | grep vllm
docker run --rm   --gpus all   --entrypoint nvidia-smi   "$VLLM_IMAGE"
docker run --rm   "$VLLM_IMAGE"   --version
docker run --rm   --gpus all   --entrypoint python   "$VLLM_IMAGE"   -c "import torch, vllm; print('CUDA available:', torch.cuda.is_available()); print('GPU:', torch.cuda.get_device_name(0)); print('vLLM:', vllm.__version__)"
docker run --rm   --gpus all   --entrypoint nvidia-smi   "$VLLM_IMAGE"
docker run --rm   --gpus all   --entrypoint python3   "$VLLM_IMAGE"   -c "import torch, vllm; print('CUDA available:', torch.cuda.is_available()); print('GPU:', torch.cuda.get_device_name(0)); print('vLLM:', vllm.__version__)"
docker ps -a
echo $HF_HOME
echo $HUGGINGFACE_HUB_CACHE
hf download nvidia/Gemma-4-26B-A4B-NVFP4
du -sh ~/llm/cache/huggingface
find ~/llm/cache/huggingface/hub   -maxdepth 1   -type d   -name '*Gemma*'
docker run --rm   --gpus all   --ipc=host   -p 8000:8000   -v "$HF_HOME:/root/.cache/huggingface:ro"   --name gemma4   "$VLLM_IMAGE"   nvidia/Gemma-4-26B-A4B-NVFP4   --trust-remote-code   --tool-call-parser gemma4   --reasoning-parser gemma4   --enable-auto-tool-choice   --max-model-len 32768   --gpu-memory-utilization 0.70
docker ps
nano ~/llm/scripts/gemma-start
chmod +x ~/llm/scripts/gemma-start
nano ~/llm/scripts/llm-stop
chmod +x ~/llm/scripts/llm-stop
echo 'export PATH="$HOME/llm/scripts:$PATH"' >> ~/.bashrc
source ~/.bashrc
gemma-start
docker ps
docker logs -f gemma4
gemma-start
docker logs -f gemma4
echo $HF_HOME
hf download nvidia/Qwen3.6-35B-A3B-NVFP4
du -sh ~/llm/cache/huggingface
find ~/llm/cache/huggingface/hub   -maxdepth 1   -type d   -name '*Qwen3.6*'
docker ps
export VLLM_USE_FLASHINFER_MOE_FP4=0
export VLLM_FP8_MOE_BACKEND=flashinfer_cutlass
export FLASHINFER_DISABLE_VERSION_CHECK=1
export CUTE_DSL_ARCH=sm_121a
docker run --rm   --gpus all   --ipc=host   -p 8000:8000   -v "$HF_HOME:/root/.cache/huggingface"   -e VLLM_USE_FLASHINFER_MOE_FP4=0   -e VLLM_FP8_MOE_BACKEND=flashinfer_cutlass   -e FLASHINFER_DISABLE_VERSION_CHECK=1   -e CUTE_DSL_ARCH=sm_121a   --name qwen36   "$VLLM_IMAGE"   nvidia/Qwen3.6-35B-A3B-NVFP4   --tensor-parallel-size 1   --trust-remote-code   --dtype auto   --quantization modelopt   --kv-cache-dtype fp8   --attention-backend flashinfer   --moe-backend marlin   --gpu-memory-utilization 0.85   --max-model-len 65536   --max-num-seqs 4   --max-num-batched-tokens 8192   --enable-chunked-prefill   --async-scheduling   --enable-prefix-caching   --speculative-config '{"method":"mtp","num_speculative_tokens":3,"moe_backend":"triton"}'   --reasoning-parser qwen3   --tool-call-parser qwen3_xml   --enable-auto-tool-choice
nano ~/llm/scripts/qwen-start
chmod +x ~/llm/scripts/qwen-start
qwen-start
docker ps
docker logs -f qwen36
gemma-start
docker logs -f gemma4
qwen-start
docker ps
gemma-start
docker ps
nano ~/llm/scripts/llm-status
chmod +x ~/llm/scripts/llm-status
llm-status
quen-start
qwen-start
llm-status
docker ps
btop
htop
gemma-start
docker ps
gemma-start
llm-status
gemma-start
qwen-start
~/llm/scripts/gemma-start
ls -l ~/llm/scripts/
~/llm/scripts/gemma-start
cat ~/llm/scripts/gemma-start
cat -A ~/llm/scripts/gemma-start
printf 'VLLM_IMAGE=[%s]\nHF_HOME=[%s]\n' "$VLLM_IMAGE" "$HF_HOME"
docker images --format '{{.Repository}}:{{.Tag}}'
grep -nE 'VLLM_IMAGE|HF_HOME|source|\.env' ~/llm/scripts/gemma-start ~/llm/scripts/qwen-start
bash -c 'source "$HOME/llm/config/env.sh"; printf "VLLM_IMAGE=[%s]\nHF_HOME=[%s]\n" "$VLLM_IMAGE" "$HF_HOME"'
nano ~/llm/config/env.sh
gemma-start
clear
docker logs -f gemma4
docker logs
docker logs -f gemma4
llm-status
llm-stop
llm-status
docker ps
docker logs -f gemma4
docker ps
clear
btop
htop
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "created feature engineering notebook, defined goals, loaded dataset"
git push
git status
clear
cd ..
ls
cd data-science-learning-log
ls
cd 2026
ls
nano october.md
git status
git add .
git commit -m "feature engineering start"
git push
git status
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "daily target correlation, lag correlation, checked for missing timestamps (none found), future correlation df, thoughtflow of eda notes. now moving into feature engineering notebook"
git push
git status
cd
gemma-start
docker ps
docker logs -f gemma4
llm-status
cd projects
cd deep-learning-tabular
git status
git add .
git commit -m "first full feature engineering pass and export as parquet"
git push
git status
clear
cd ..
ls
ls -lh
cd data-science-learning-log
ls
cd 2026
nano october.md
git status
git add .
git commit -m "first feature engineering pass in deep learning energy project"
git push
git status
clear
cd
cd projects
cd deep-learning-tabular
git status
git add .
git git commit -m "train validation test split notebook created and goals set"
git commit -m "train validation test split notebook created and goals set"
git push
git status
cd projects
cd deep-learning-tabular
git status
git add .
git commit -m "train, val, test, and preprocessing"
git push
git status
clear
cd ..
sl
ls
clear
ls
cd data-science-learning-log
ls
cd 2026
nano october.md
git status
git add .
git commit -m 
git commit -m "chronological splitting and preprocessing"
git push
git status
clear
llm-status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "finished chronological splitting and prep"
git push
git status
git add .
git commit -m "created baseline models notebook and stated goals"
git push
git status
cd ..
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "completion of chronological splitting and prep work, next step is establishing model baselines"
git push
git status
clear
cd projects
ls
cd deep-learning-tabular
clear
git status
git add .
git commit -m "preliminary steps for evaluation"
git push
clear
git status
cd ..
ls
cd data-science-learning-log
nano october/md
nano october.md
ls
cd 2026
nano october.md
git status
git add .
git commit -m "begin baseline model evaluation log"
git push
git status
clear
git status
cd projects
cd deep-learning-tabular
git status
git add .
git commit -m "created baselines: native persistence, and linear regression"
git push
git status
clear
cd ..
ls
cd data-science-learning-log
cd 2026
ls
nano october.md
git status
git add .
git commit -m "baselines for models incl persitence and linear regression"
git push
git status
clear
cd projects/deeplearning-tabular
cd projects
cd deep-learning-tabular
git add .
git commit -m "random forest baseline"
git push
git status
cd ..
ls
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "random forest baseline log"
git push
clear
cd projects
cd deep-learning-tabular
git status
git add .
git commit -m "gradient boosting baseline"
git push
git status
cd ..
ls
cd data-science-learning-log
ls
cd 2026
nano october.md
git status
git add .
git commit -m "gradient boosting baseline log"
git push
git status
cd projects
ls
cd deep-learning-tabular
git status
git add .
git commit -m "comparison of all 4 models, improvement over persistence, saved results in csv"
git push
git status
cd ..
ls
cd projects
cd deep-learning-tabular
git status
git add .
git commit -m "created neural network notebook, stated plan and goals"
git push
git status
clear
cd ..
ls -lh
cd data-science-learning-log
cd 2026
nano october.md
clear
cd
cd projects/data-science-learning-log
cd 2026
git status
git add .
git commit -m "created neural net notebook, stated goals and plan"
git push
git status
clear
cd
cd projects
ls -lh
cd data-science-learning-log
ls -lh
cd 2026
nano october.md
git status
git add.
git add .
git commit -m "baseline comparison and export log (persistence, regression, random forest, and gradient boosting)" 
git push
git status
sudo get update
sudo apt update
sudo apt upgrade
cd projects/deep-learning-tabular
git status
git add .
git commit -m "load data, time split, train test split, load feature list, split predictors and target, scale features useing training stats"
git push
git status
cd ..
ls
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "began prepping the dataset for neural network log"
git push
git status
clear
cd
cd projects/deep-learning-tabular
git status
git add .
git commit -m "setup general pipeline for neural network training on the gpu tensors"
git push
git status
cd ..
ls
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "pytorch pipeline setup for project log"
git push
git status
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "define and configure first pytorch mlp"
git push
git status
cd .
cd ..
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "Log MLP architecture and training configuration"
git push
git status
clear
cd
cd projects/deep-learning-tabular
git status
git add .
git commit -m "complete training loop and double check nn shape"
git push
cd projects/data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "completed neural net pipeline log"
git push
git status
clear
cd
cd projects/deep-learning-tabular
git status
git add .
git commit -m "first gpu training run, and inspection of fitting results"
git push
cd ..
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "completed first full gpu training run, and inspected results"
git push
git status
clear
cd
clear
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "eval best nn model, compare to grad boost, plot"
git push
cd ..
cd data-science-learning-log/2026
nano october.md
git status
git add .
git commit -m "log nn validation results"
git push
git status
clear
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "huber loss nn experiment"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano october.md
git status
git add .
git commit -m "huber loss experiment log"
git push
git status
clear
cd
cd projects/deep-learning-tabular
git status
git add .
git commit -m "created nn reduced dropout notebook and defined goals and hypothesis"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano october.md
git status
git add .
git commit -m "reduced dropout experiment setup"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "tested reduced dropout method nn, worse results"
git push
git status
git add .
git commit -m "basic comments added"
git push
cd ..
cd data-science-learning-log
cd 2026
nano october.md
git status
git add .
git commit -m "reduced dropout experiment in nn"
git push
git status
clear
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "created temporal feature expansion notebook, defined goal, hhypothesis, and plan"
git push
git add .
git commit -m "setup, load df, recreate original features, target"
git push
git status
cd ..
cd data-science-learning-log/2026
nano october.md
git status
git add .
git commit -m "temporal feature expansion start log"
git push
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "added change features, volatil & extreme vals, range"
git push
git status
cd ..
cd data-science-learning-log/2026
nano october.md
touch november.md
nano november.md
git status
git add .
git commit -m "created log for november, notes on temporal feature expansion continued"
git push
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "checked new features and relationship with the target"
git push
git status
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "new feature analysis log"
git push
git status
cd
clear
git projects/deep-learning-tabular
cd projects/deep-learning-tabular
git status
git add .
git commit -m "validating the expanded phase 2 dataset"
git push
cd ..
cd data-learning-log/2026
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m " validation of phase 2 dataset log"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "completed and exported phase 2 temporal features"
git push
git status
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "completed phase 2 temporal feature dataset"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "created phase 2 model comparison notebook, defined goals, experiment and success conditions"
git push
cd ..
cd data-science-learning-log
cd 2026
nano november.md
git status
git add .
git commit -m "learning log for start of p2 notebook"
git push
git status
cd
clear
exit
sudo apt update
sudo apt upgrade
sudo systemctl status tailscaled
cd projects/deep-learning-tabular
git status
git add .
git commit -m "phase 2 evaluation"
git push
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "evaluated phase 2 grad boosting using new temoral features"
git push
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "started preparing p2 data for nn"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano november.md
cd
cd data-science-learning-log/2026
cd projects/data-science-learning-log/2026
git status
git add .
git commit -m "started preparing the phase 2 neural net pipeline"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "redundant commit"
git push
git status
clear
cd
cd projects/deep-learning-log
cd preojects
cd projects/deep-learning-tabular
git add .
git commit -m "working through nn setup, next step is to copy in settings from phase 1"
git push
git status
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "phase 2 nn setup continued"
git push
git status
cd
clear
tailscale netcheck
tailscale status
tailscale netcheck
cd projects/deep-learning-tabular
git status
git add .
git commit -m "completed phase 2 nn comparison"
git push
git status
cd ..
cd data-science-learning-log
cd 2026
git status
nano november.md
git status
git add .
git commit -m "completed p2 nn comparison log"
git push
git status
cd
clear
sudo apt update
sudo apt upgrade
reboot
sudo reboot
cd projects/deep-learning-tabular
git status
git add .
git commit -m "final model selection notebook created, goal and plan stated"
git push
git status
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "log creating final notebook for final model and test"
git push
git status
cd
clear
nvidia-smi
cd projects/deep-learning-tabular
git status
git add .
git commit -m "started final test-set evaluation workflow"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "log of the beginning of the final test-set eval"
git push
git status
cd projects/deep-learning-tabular
git status
git add .
git commit -m "completed final test-set eval for project"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "final test set evaluation log"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit "exported csv of final results, continued notebook 11 into plots and furthur analysis"
git commit -m  "exported csv of final results, continued notebook 11 into plots and furthur analysis"
git push
clear
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "cont. final evaluation of deep learning project"
git push
git status
cd ..
clear
cd
cd projects/deep-learning-tabular
git status
git add .
git commit -m "completed final modeling notebook and made conclusions"
git push
git status
clear
cd ..
cd data-science-learning-log/2026
nano november.md
git status
git add .
git commit -m "conclusions on first deep learning project"
git push
git status
cd
clear
cd projects/deep-learning-tabular
git status
git add .
git commit -m "updated readme to give an overview of the project"
git push
cd ..
cd data-science-learning-log
nano november.md
cd 2026
nano november.md
git status
git add .
git commit -m "log for readme creation at end of project"
git push
git status
cd
clear
llm-status
llm-help
gemma-start
exit
llm-status
curl -v --max-time 10 http://localhost:3000
cd projects
[200~mkdir computer-vision-satellite-classification
ls
mkdir computer-vision-satellite-classification
ls
cd computer-vision-satellite-classification
[200~mkdir -p notebooks
mkdir -p src/models
mkdir -p src/data
mkdir -p src/training
mkdir -p src/evaluation
mkdir -p api
mkdir -p data/raw
mkdir -p data/processed
mkdir -p models
mkdir -p results/figures
mkdir -p results/metrics
mkdir -p learning_logs~
mkdir -p notebooks
ls
ls -lh
cd data
ls
cd ..
cd src
ls
cd ..
touch src/__init__.py
touch src/models/__init__.py
touch src/data/__init__.py
touch src/training/__init__.py
touch src/evaluation/__init__.py
touch notebooks/.gitkeep
touch api/.gitkeep
touch results/figures/.gitkeep
touch results/metrics/.gitkeep
touch learning_logs/.gitkeep
touch learning_logs~/.gitkeep
touch README.md
nano readme.md
ls -lh
nano readme.md
ls -lh
rm readme.md
ls -lh
nano README.md
touch .gitignore
nano .gitignore
ls -lh
nano .gitignore
touch requirements.txt
nano requirements.txt
git init -b main
git add .
git commit -m "Initial project structure and documentation"
gh --version
sudo apt install gh
gh --version
gh repo create computer-vision-satellite-classification     --public     --source=.     --remote=origin     --push
git remote add origin git@github.com:dmurray-data/computer-vision-satellite-classification.git
git remote -v
git push -u origin main
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install     numpy     pandas     matplotlib     scikit-learn     Pillow     tqdm     jupyterlab     ipykernel
python -m ipykernel install     --user     --name satellite-cv     --display-name "Python (Satellite CV)"
git status
which python
python -c "import torch; print('PyTorch:', torch.__version__); print('CUDA:', torch.version.cuda); print('GPU Available:', torch.cuda.is_available())"
python -m pip install \ torch \ torchvision
clear
git status
git add .
git commit -m "first project notebook created and markdown header entered explaining what it is for"
git push
git status
cd ..
cd data-science-learning-log
cd 2026
nano november.md
git status
git add .
git commit -m "1st learning log for computer vision project"
git push
git status
cd projects/computer-vision-satellite-classification
git status
git add .
git commit -m "created and visualized b&w image and color image"
git push
cd ..
cd data-science-learning-log
cd 2026
clear
nano november.md
git status
git add .
git commit -m "log on creating b&w and color images"
git push
git status
clear
cd
cd projects
ls -lh
cd computer-vision-satellite-classification
git status
git add .
git commit -m "learned about multicolor images and how to extract the color channels"
git push
cd ..
cd data-science-learning-log
cd 2026
nano november.md
git status
git add.
git add .
git commit -m "leaning log on color channels"
git push
git status
cd
clear
cd projects
ls -lh
cd computer-vision-satellite-classification
git status
git add .
git commit -m "converted numpy format to torch format of image and normalized pixels"
git push
cd ..
cd data-science-learning-log
cd 2026
nano november.md
git status
git add .
git commit -m "log for format of pixels and how to normalize the data"
git push
git status
cd
clear
