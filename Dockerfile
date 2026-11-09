# STAGE 1: The Heavy Builder (Like a messy construction site with all the tools)
FROM python:3.10 AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# STAGE 2: The Lightweight Runner (The clean finished house - this makes it 120MB)
FROM python:3.10-slim AS runner
WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY app.py .

ENV PATH=/root/.local/bin:$PATH
EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]