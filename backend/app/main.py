from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def teste():
    return {"teste":"testando 123"}