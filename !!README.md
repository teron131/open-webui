# Specialized changes:

- Update env example
- Use Google OAuth only
- Connect to pipelines by default
- Admin also utilizes model filter
- Mask API keys as sensitive in pipelines in admin setting
- Bot Builder API
- LLM translate with formatter and configs

# TLDR:

For one terminal:

```bash
conda activate open-webui-env && # if use conda
cd backend && bash start.sh
```

For another terminal:

```bash
conda activate open-webui-env && # if use conda
cd pipelines && bash start.sh
```

You can do a script but keep it simple here.

1. http://localhost:8080

2. Login

3. Settings -> Admin Settings or Admin Panel -> Settings

4. Connections

5. Add in OpenAI API:

   - API Base URL:http://localhost:9999
   - API Key: 0p3n-w3bu!
   - Save

6. Pipelines

Port `9099` is changed to `9999` because somehow `9099` is always in use.

# From docs:

There are many ways of installation. Install directly without Docker to use VPN without overhead.

https://docs.openwebui.com/getting-started/#install-from-open-webui-github-repo

Already ran:

```bash
git clone https://github.com/open-webui/open-webui.git
cd open-webui/

# Copying required .env file
cp -RPp .env.example .env

# Building Frontend Using Node
npm install
npm run build

cd ./backend

# Optional: To install using Conda as your development environment, follow these instructions:
# Create and activate a Conda environment
conda create --name open-webui-env python=3.11
conda activate open-webui-env

# Install dependencies
pip install -r requirements.txt -U

# Start the application
bash start.sh
```

Customize using the pipelines mechanism.

https://docs.openwebui.com/pipelines/

```bash
# Clone the Pipelines repository:

git clone https://github.com/open-webui/pipelines.git
cd pipelines

# Install the required dependencies:

pip install -r requirements.txt

# Start the Pipelines server:

bash ./start.sh
```

The [pipelines/pipelines](pipelines/pipelines) directory is the core of your setup. Add new modules, customize existing ones, and manage your workflows here.

Connect to Open WebUI:

- Navigate to the Admin Panel > Settings > Connections section in Open WebUI.

- When you're on this page, you can press the + button to add another connection.

- Set the API URL to http://localhost:9999 and the API key to 0p3n-w3bu!.

- Once you've added your pipelines connection and verified it, you will see an icon appear within the API Base URL field for the added connection. When hovered over, the icon itself will be labeled Pipelines. Your pipelines should now be active.
