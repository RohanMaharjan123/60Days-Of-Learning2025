# 📘 Day 54 of #60DaysOfLearning2025

## Topic: FastAPI – SQL Databases

Today, I learned how to **integrate SQL Databases with FastAPI** using **SQLAlchemy and SQLite**, allowing CRUD operations in my API while maintaining **asynchronous and structured code**.

---

## 🔗 Resource

- [FastAPI – SQL Databases](https://fastapi.tiangolo.com/tutorial/sql-databases/)

---

## What I Learned

- **FastAPI + SQLAlchemy Integration** for structured database operations.  
- Using **SQLite for local testing** (easily swappable with PostgreSQL/MySQL).  
- **CRUD operations (Create, Read, Update, Delete) with database models**.  
- Using **Pydantic models for validation** while interacting with DB models.  
- Dependency injection for **database sessions** in endpoints.

---

## 🛠️ Key Components

### 1️⃣ Install Dependencies

```bash
pip install sqlalchemy
pip install databases  # for async support (optional)
```

Create SQLAlchemy Models

```python
from sqlalchemy import Column, Integer, String, Boolean
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Todo(Base):
    __tablename__ = "todos"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String, index=True)
    description = Column(String, index=True)
    completed = Column(Boolean, default=False)
```

Database Connection & Session

```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False})
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
```

Dependency for DB Session

```python
from fastapi import Depends

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```

Pydantic Schemas

```python
from pydantic import BaseModel

class TodoCreate(BaseModel):
    title: str
    description: str
    completed: bool = False

class TodoRead(TodoCreate):
    id: int

    class Config:
        orm_mode = True
```

CRUD API with FastAPI

```python
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy.orm import Session

app = FastAPI()

@app.post("/todos/", response_model=TodoRead)
def create_todo(todo: TodoCreate, db: Session = Depends(get_db)):
    db_todo = Todo(**todo.dict())
    db.add(db_todo)
    db.commit()
    db.refresh(db_todo)
    return db_todo

@app.get("/todos/{todo_id}", response_model=TodoRead)
def read_todo(todo_id: int, db: Session = Depends(get_db)):
    todo = db.query(Todo).filter(Todo.id == todo_id).first()
    if not todo:
        raise HTTPException(status_code=404, detail="Todo not found")
    return todo
```

Key Takeaways

- FastAPI integrates cleanly with SQLAlchemy for structured database operations.
- Database connections and sessions can be injected as dependencies for clean separation of concerns.
- Using Pydantic schemas keeps API validation structured and consistent with DB models.
- Enables building scalable backend APIs with persistent data storage.
