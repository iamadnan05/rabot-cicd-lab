from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
def read_root():
    db_user = os.getenv("POSTGRES_USER", "default_user")
    return {"status": "healthy", "message": f"App is running. DB User: {db_user}"}