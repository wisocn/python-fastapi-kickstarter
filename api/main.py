import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.post("/todo")
async def add_new_todo():
    return {"message": "Hello World"}
 
@app.get("/todo/:id")
async def get_todo():
    return {"message": "Hello World"}

@app.put("/todo/:id")
async def update_todo():
    return {"message": "Hello World"}

async def delete_todo():
    return {"message": "Hello World"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
