# Rabot Energy - Platform Operations Runbook

## 1. Deployment Commands
- Start all services: `docker compose up -d --build`
- Stop all services: `docker compose down`

## 2. Operational Commands
- Check API container logs: `docker compose logs web`
- Check Nginx proxy logs: `docker compose logs nginx`

## 3. Troubleshooting
**Issue:** The API website returns a "502 Bad Gateway" error.
**Fix:** The Python web container crashed. Run `docker compose restart web` and check `docker ps` to verify it stays running.