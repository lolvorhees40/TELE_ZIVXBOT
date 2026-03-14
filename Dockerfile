FROM python:3.13-slim

# Install Tesseract
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements*.txt ./
RUN pip install -r "requirements (1).txt"

COPY . .

CMD ["python", "telegram_bot.py"]
