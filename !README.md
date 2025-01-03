git clone https://github.com/teron131/open-webui-pipelines
git clone https://github.com/teron131/langchain-playground.git
pip install -U ./langchain-playground
npm install
npm run build
bash start.sh
tmux kill-server
