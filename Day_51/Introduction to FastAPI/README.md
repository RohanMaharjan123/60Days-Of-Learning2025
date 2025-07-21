# 📘 Day 51 of #60DaysOfLearning2025

## Topic: Introduction to FastAPI

Today, I explored **FastAPI**, a modern, fast (high-performance) web framework for building APIs with Python 3.7+ using type hints.

---

## 🔗 Resource

- [FastAPI Official Documentation](https://fastapi.tiangolo.com/)

---

## 🧠 What is FastAPI?

- **FastAPI** is a **high-performance web framework** for building APIs quickly.  
- Based on **Python type hints** for data validation and automatic documentation.  
- Uses **Starlette for the web parts** and **Pydantic for data validation**.  
- Automatically generates **interactive Swagger UI and ReDoc**.

---

## ⚙️ Installation

Install FastAPI and Uvicorn (ASGI server):

```bash
pip install fastapi uvicorn
```

Basic Example

Create a file named main.py:

```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
```

Run the server:

```bash
uvicorn main:app --reload
```

Access:
• <http://127.0.0.1:8000> – See JSON response.
• <http://127.0.0.1:8000/docs> – Interactive Swagger UI.
• <http://127.0.0.1:8000/redoc> – ReDoc documentation.

Request Validation

FastAPI uses type hints for request validation automatically:

```python
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Item(BaseModel):
    name: str
    price: float
    is_offer: bool = None

@app.post("/items/")
async def create_item(item: Item):
    return item
```

Key Takeaways

- FastAPI helps you build high-performance APIs efficiently.
- Built-in automatic documentation with Swagger UI & ReDoc.
- Uses Python type hints for validation and serialization.
- FastAPI is ideal for microservices, backend APIs for mobile/web apps, and data services.

`60DaysOfLearning` `LearningWithLeapfrog` `Day51` `Introduction to FastAPI` `FastAPI` `Python` `APIs` `WebFrameworks`
