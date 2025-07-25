#!/bin/bash
# Create Python virtual environment
echo "Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment and install requirements
source venv/bin/activate
echo "Installing packages from requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Setup complete."

if [ "$1" = "--jupyter" ]; then
    echo "Launching Jupyter Notebook..."
    jupyter notebook
fi
