
FROM python:3.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Create and switch to a non-root user
RUN useradd --create-home appuser \
    && chown -R appuser:appuser /app

USER appuser

# Application port
EXPOSE 8080

# Start Accounts service
CMD ["python", "-c", "from service import create_app; app=create_app(); app.run(host='0.0.0.0', port=8080)"]
