# 📘 Day 44 of #60DaysOfLearning2025

## Topic: Flask with SQLAlchemy ORM

Today, I explored **integrating SQLAlchemy with Flask** for **database management using Python's ORM** to build structured, scalable backend applications.

---

## 🔗 Resource

- [Flask Official Guide – SQLAlchemy Integration](https://flask.palletsprojects.com/en/2.2.x/patterns/sqlalchemy/)

---

## What I Learned

### What is SQLAlchemy?

SQLAlchemy is a **Python SQL toolkit and ORM** allowing object-oriented interaction with relational databases.  
Helps **map Python classes to database tables**, manage relationships, and perform CRUD operations efficiently.

---

## Installation

Install Flask-SQLAlchemy:

```bash
pip install flask-sqlalchemy
```

Initialize SQLAlchemy in your Flask application:

```python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///mydatabase.db'
db = SQLAlchemy(app)
```

---

##  Creating Models

Define your database models using SQLAlchemy:

```python
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    password = db.Column(db.String(120), nullable=False)

    def __repr__(self):
        return f'<User {self.username}>'
```

---

## Creating the Database

Initialize your database:

```python
with app.app_context():
    db.create_all()
```

---

## CRUD Operations

### Read

```python
users = User.query.all()
```

### Create

```python
new_user = User(username='newuser', email='newuser@example.com', password='hashedpassword')
db.session.add(new_user)
db.session.commit()
```

### 📝 Update

```python
user_to_update = User.query.get(1)
user_to_update.username = 'updateduser'
db.session.commit()
```

### 🗑️ Delete

```python
user_to_delete = User.query.get(1)
db.session.delete(user_to_delete)
db.session.commit()
```

---

## 🧠 Key Takeaways

- SQLAlchemy allows clean mapping of Python classes to database tables.
- Enables easy CRUD operations in a Pythonic way.
- Integrates seamlessly with Flask for scalable backend development.
- Ideal for building APIs and full-stack applications using Flask + SQLAlchemy.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day44` `Flask` `SQLAlchemy` `ORM` `CRUD` `Database` `FlaskSQLAlchemy`
