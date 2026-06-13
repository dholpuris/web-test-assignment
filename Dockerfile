# Stage 1 : Build image  
FROM python:3.12-slim AS builder
WORKDIR /build
COPY requirement.txt .
RUN pip install --upgrade pip && \
pip install  --no-cache-dir --prefix=/install -r requirement.txt

# Stage2 : Runtime
FROM python:3.12-slim

# create non root user 
RUN groupadd -r appgroup && \
useradd -r -g appgroup appuser

WORKDIR /app

# copy installed package
COPY --from=builder /install /usr/local

# copy application
COPY app.py .

#change ownership
RUN chown -R appuser:appgroup /app

#switch to non-root user

USER appuser

EXPOSE 8000


CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
