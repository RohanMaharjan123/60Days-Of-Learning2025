# 📘 Day 41 of #60DaysOfLearning2025

## Topic: Flask Installation and Project Setup

Today, I started exploring **Flask**, a **lightweight Python web framework**, by learning how to **install Flask, set up a virtual environment, and run a basic Flask app**.

---

## 🔗 Resource

- [Flask Official Installation Guide](https://flask.palletsprojects.com/en/2.2.x/installation/)

---

## 🧠 What I Learned

### 🚀 What is Flask?

- Flask is a **micro web framework** written in Python.  
- It is lightweight, modular, and easy to extend, making it great for **building APIs and web apps**.

---

## ⚙️ Installing Flask

### 1️⃣ Setting Up a Virtual Environment

```bash
# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
# On macOS/Linux:
source venv/bin/activate

# On Windows:
venv\Scripts\activate
```

Installing Flask

After activating the virtual environment, install Flask:

```bash
pip install flask
```

Creating Your First Flask App

Create app.py:

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Flask World!'
```

Run the Flask App:

```bash
python app.py
```

or to run the Flask app, use the following command:

```bash
flask run
```

Navigate to http://127.0.0.1:5000/ to see “Hello, Flask World!”.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day41` `Flask` `ProjectSetup` `VirtualEnvironment` `FlaskInstallation` `HelloWorldApp` `BasicFlaskApp`
