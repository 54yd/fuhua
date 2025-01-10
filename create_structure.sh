#!/usr/bin/env bash
#
# init_project.sh
# Creates a folder structure and empty files for the automation tool project.

# Exit script on error
set -e

# 1) Create main project folder
mkdir -p project

# 2) Create subfolders
mkdir -p project/parser
mkdir -p project/commands
mkdir -p project/backends

# 3) Create top-level files
touch project/showui_gradio.py
touch project/run.py

# 4) Create parser files
touch project/parser/script_parser.py

# 5) Create commands files
touch project/commands/dispatcher.py
touch project/commands/executors.py

# 6) Create backend files
touch project/backends/showui_api.py
touch project/backends/ocr_api.py
touch project/backends/agent_api.py

# 7) Optionally add simple boilerplate to each file
echo "# showui_gradio.py (Forked/Modified from original Gradio UI)" > project/showui_gradio.py
echo "# run.py: Main entry point for script-based automation" > project/run.py
echo "# script_parser.py: Logic for reading & parsing the command file" > project/parser/script_parser.py
echo "# dispatcher.py: Dispatches parsed commands to executors" > project/commands/dispatcher.py
echo "# executors.py: Contains executor functions for wait, click, ocr, etc." > project/commands/executors.py
echo "# showui_api.py: ShowUI / Gradio integration for click, etc." > project/backends/showui_api.py
echo "# ocr_api.py: OCR integration (Gemini, Tesseract, etc.)" > project/backends/ocr_api.py
echo "# agent_api.py: Agent or custom function calls" > project/backends/agent_api.py

echo "Project structure created successfully!"

