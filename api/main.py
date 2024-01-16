import uvicorn
from contextlib import asynccontextmanager
from fastapi import FastAPI
from api.components.db import postgres

@asynccontextmanager
async def lifespan(app: FastAPI):
    await postgres.init_db()
    yield
    print("clean up lifespan")

# initialise the database at app startup
app = FastAPI(lifespan=lifespan)

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.post("/todo")
async def add_new_todo():
    return {"message": "Hello World"}
 
@app.get("/todo/{id}")
async def get_todo(id: str):
    return {"message": "Hello World with id" + id}

@app.put("/todo/:id")
async def update_todo():
    return {"message": "Hello World"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
