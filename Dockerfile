FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "-c", "from service import create_app; app=create_app(); app.run(host='0.0.0.0', port=8080)"]
