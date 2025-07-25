# 📘 Day 55 of #60DaysOfLearning2025

## Topic: FastAPI – Deployment

Today, I explored **how to deploy FastAPI applications** for production environments, including best practices, recommended servers, and strategies for reliable, scalable deployment.

---

## 🔗 Resource

- [FastAPI – Deployment](https://fastapi.tiangolo.com/deployment/)

---

## What I Learned

**Development vs Production Servers**:

- Use `uvicorn --reload` **only for development** (auto-reload, debugging).
- Use **ASGI servers like `uvicorn` or `hypercorn` in production** without `--reload`.

**Using Gunicorn with Uvicorn Workers**:

- For production, use Gunicorn as the process manager with multiple `uvicorn` workers for concurrency.

**Command Example**:

```bash
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app
```

-w 4 : Use 4 worker processes.
-k uvicorn.workers.UvicornWorker : Use Uvicorn worker class.

**Deployment Best Practices**:

- Place FastAPI behind a reverse proxy (Nginx) to handle HTTPS, static files, and manage client connections.
- Use HTTPS (TLS) for secure connections.
- Monitor and manage your application using process managers or orchestration tools (Docker, systemd, Kubernetes).

**Deployment Options**:

- Bare Metal / VM: Manual setup with Gunicorn + Uvicorn + Nginx.
- Docker Containers: Package the app for portability and consistency.
- Cloud Services: Deploy using AWS, Azure, GCP, DigitalOcean, or serverless platforms.

✅ Docker Deployment:
FastAPI apps are container-friendly. A minimal Dockerfile:

```dockerfile
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

COPY ./app /app
```

This image automatically sets up Gunicorn with Uvicorn workers for FastAPI.

**Using HTTPS**:

- Let’s Encrypt can be used with Nginx for automatic SSL certificate management.
- Tools like Caddy can also automate HTTPS.

⸻

💡 Key Takeaways

- Use Gunicorn + Uvicorn for robust production deployment.
- Place FastAPI behind a reverse proxy (Nginx/Caddy) for HTTPS and static file handling.
- Use Docker for consistency, scalability, and easy deployment.
- Monitor your services and logs for reliability in production.
