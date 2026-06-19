from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def root():
    return{"message": "Hello  Beautiful World"}
@app.route{"/health"}
def health():
    return {"status": "UP"}, 200
@app.route{"/ready"}
def ready():
    return {"status": "READY"}, 200
