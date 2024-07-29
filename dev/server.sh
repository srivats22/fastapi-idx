#!/bin/sh
source .venv/bin/activate
python -m uvicorn app:app --reload