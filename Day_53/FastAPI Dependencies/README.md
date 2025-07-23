# 📘 Day 53 of #60DaysOfLearning2025

## Topic: FastAPI Dependencies

Today, I explored **FastAPI Dependencies** to learn how to build **reusable, modular, and clean API code** using dependency injection.

---

## 🔗 Resource

- [FastAPI – Dependencies](https://fastapi.tiangolo.com/tutorial/dependencies/)

---

## 🧠 What are Dependencies in FastAPI?

✅ **Dependencies** in FastAPI:
- Allow **shared logic** (e.g., DB connections, authentication, validation) across multiple endpoints.
- Promote **clean, reusable, DRY (Don’t Repeat Yourself) code**.
- Enable **dependency injection** in Pythonic, intuitive ways.

---

## 🛠️ Basic Dependency Example

```python
from fastapi import Depends, FastAPI

app = FastAPI()

def common_parameters(q: str = None, skip: int = 0, limit: int = 10):
    return {"q": q, "skip": skip, "limit": limit}

@app.get("/items/")
async def read_items(commons: dict = Depends(common_parameters)):
    return commons

@app.get("/users/")
async def read_users(commons: dict = Depends(common_parameters)):
    return commons
```

• common_parameters is a dependency.
• Depends() injects this logic into multiple routes.

## Using Classes as Dependencies

```python
from fastapi import Depends, FastAPI

app = FastAPI()

class CommonQueryParams:
    def __init__(self, q: str = None, skip: int = 0, limit: int = 10):
        self.q = q
        self.skip = skip
        self.limit = limit

@app.get("/items/")
async def read_items(commons: CommonQueryParams = Depends()):
    return {"q": commons.q, "skip": commons.skip, "limit": commons.limit}
```

## Sub-dependencies

```python
from fastapi import Depends, FastAPI

app = FastAPI()

def query_extractor(q: str = None):
    return q

def query_or_cookie_extractor(
    q: str = Depends(query_extractor), last_query: str = None
):
    if q:
        return q
    return last_query

@app.get("/items/")
async def read_query(query_or_default: str = Depends(query_or_cookie_extractor)):
    return {"q_or_cookie": query_or_default}
```

### Key Takeaways

- Dependencies:
• Simplify shared logic (e.g., auth, pagination, DB sessions).
• Enable clean, modular, testable API code.
• Support request-based injections without heavy frameworks.

- Dependencies can be:
  - Functions
  - Classes
  - Coroutines

- Dependencies can have their own sub-dependencies for layered logic.

`60DaysOfLearning` `LearningWithLeapfrog` `Day53` `FastAPI Dependencies` `FastAPI` `Python` `APIs` `WebFrameworks`
