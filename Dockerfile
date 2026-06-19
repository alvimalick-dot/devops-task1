
FROM python:3.11-slim AS base
WORKDIR /app

# Optimize layer caching for dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application files
COPY test_t1.py .

EXPOSE 5000

# Command to run the test script directly when container boots
CMD ["python3", "test_t1.py"]