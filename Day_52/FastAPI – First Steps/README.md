# 📘 Day 52 of #60DaysOfLearning2025

## Topic: FastAPI – First Steps

Today, I explored **FastAPI First Steps** to deepen my understanding of building structured REST APIs with Python, including path operations, type annotations, and automatic documentation.

---

## 🔗 Resource

- [FastAPI – First Steps](https://fastapi.tiangolo.com/tutorial/first-steps/)

---

## 🧠 What I Learned

- **Path Operations**: Use decorators like `@app.get()` and `@app.post()` to define API endpoints.  
- **Path Parameters**: Dynamically capture values from the URL.  
- **Query Parameters**: Handle query string inputs easily.  
- **Automatic Docs**: FastAPI generates **Swagger UI** and **ReDoc** automatically.

---

## 🛠️ Example: Building a Simple API

Create `main.py`:

```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello, FastAPI Learner!"}

@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}

@app.post("/items/")
async def create_item(item: dict):
    return item
```

Running the Server

Run using:

```bash
uvicorn main:app --reload
```

Handling Query Parameters

In the example above:

```python
@app.get("/items/{item_id}")
async def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
```

Access:
• <http://127.0.0.1:8000/items/42?q=test>
• Response:

```bash
{
  "item_id": 42,
  "q": "test"
}
```

Key Takeaways

- FastAPI automatically validates request data using Python type hints.
- Path and query parameters are easy to handle.
- Interactive documentation is generated by default, aiding testing and collaboration.
- Solid foundation to build structured REST APIs rapidly.

`60DaysOfLearning` `LearningWithLeapfrog` `Day52` `FastAPI – First Steps` `FastAPI` `Python` `APIs` `WebFrameworks`
