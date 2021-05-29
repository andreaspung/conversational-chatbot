This directory contains the code used for tuning GPT-2. The steps for training are as follows:

* Download the Cornell movie dialogue corpus from: https://github.com/Marsan-Ma/chat_corpus/ 
This version has the metadata removed.
* Clean remaining separators and segment text using process.py
* Setup virtual environment:
1. Download gpt-2 repo - "git clone https://github.com/nshepperd/gpt-2.git"
2. Create new conda environment (Python version 3.7)
3. Install necessary packages from gpt-2/requirements.txt using pip - "pip install -r requirements.txt"
4. Install tensorflow-gpu version 1.15 using conda. Tensorflow version 2 is not supported!
* Copy all files from gpt-2/src into gpt-2 (the imports seem not to work otherwise)
* Copy train2.py into gpt-2. This is a modified version of train.py with a time limit (in seconds) on line 284.
* Download 117M gpt-2 model - "python download_model.py 117M"
* Modify nlp_batch.sh to fit with your environment, time limit and email address.

All of this was mostly based on: https://medium.com/ai-innovation/beginners-guide-to-retrain-gpt-2-117m-to-generate-custom-text-content-8bb5363d8b7f

Trained models can be downloaded from: https://drive.google.com/drive/u/1/folders/1tq29RUnEUYpAeyN_TECOPWydVwlD0hFZ
