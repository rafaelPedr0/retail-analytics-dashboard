from fastapi import FastAPI

app = FastAPI(title="Retail Analytics API")

@app.get("/")
def read_root():
    return {"message": "Retail Analytics API is running"}

@app.get("/health")
def health_check():
    return {"status": "ok"}