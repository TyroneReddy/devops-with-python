from fastapi import FastAPI
import uvicorn
from src.logic import wiki
from src.logic import search_wiki

app = FastAPI()

@app.get("/")
async def root():
    """root method"""
    return {"message":"wikipedia API"}

@app.get("/search/{value}")
async def search(value:str):
    """search wiki"""
    result = search_wiki(value)
    return {"results":result}

if __name__ == "__main__":
    uvicorn.run(app,port=8000,host='0.0.0.0')