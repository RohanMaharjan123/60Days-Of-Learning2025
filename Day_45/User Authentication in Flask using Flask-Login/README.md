# 📘 Day 45 of #60DaysOfLearning2025

## Topic: User Authentication in Flask using Flask-Login

Today, I learned how to implement **user authentication in Flask** using the **Flask-Login extension**, enabling secure **user sessions, login/logout management, and user protection in routes**.

---

## 🔗 Resource

- [Flask-Login Documentation](https://flask-login.readthedocs.io/en/latest/)

---

## 🧠 What is Flask-Login?

**Flask-Login** is an extension that manages **user session handling in Flask**, including:

- Logging users in and out
- Remembering logged-in users
- Restricting views to logged-in users
- Secure session management

---

## Installation

Install Flask-Login:

```bash
pip install flask-login
```

Initialize Flask-Login:

```python
from flask_login import LoginManager

login_manager = LoginManager(app)
login_manager.init_app(app)
```

---

## Code Snippet

### Basic Setup

```python
from flask import Flask, render_template
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user

app = Flask(__name__)
app.config['SECRET_KEY'] = 'your_secret_key'

login_manager = LoginManager(app)
login_manager.login_view = 'auth.login'
```

### Creating a User Model

```python
from flask_sqlalchemy import SQLAlchemy

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///users.db'
db = SQLAlchemy(app)

class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(150), unique=True, nullable=False)
    password = db.Column(db.String(150), nullable=False)
```

User Loader Function

```python
@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
```

### 1. User Model

Define a User model with at least `id` and `password` fields:

```python
from flask_login import UserMixin

class User(UserMixin):
    def __init__(self, user_id):
        self.id = user_id

    @staticmethod
    def get(user_id):
        # Implement user retrieval from the database
        return User(user_id)

    def is_authenticated(self):
        # Check if the user is authenticated
        return True
```

### 2. Login View

Create a login view to handle user authentication:

```python
from flask import Blueprint, render_template, request, redirect, url_for
from flask_login import login_user, login_required, logout_user

auth_bp = Blueprint('auth', __name__)

@auth_bp.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        
        # Implement user authentication logic
        user = User.get(username)
        if user and user.password == password:
            login_user(user)
            return redirect(url_for('index'))
        else:
            return render_template('login.html', error='Invalid credentials')
            
    return render_template('login.html')
```

### 3. Logout View

Create a logout view to handle user logout:

```python
@auth_bp.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('auth.login'))
```

### 4. Protected Route

Protect a route with `@login_required` to ensure only authenticated users can access it:

```python
@auth_bp.route('/dashboard')
@login_required
def dashboard():
    return render_template('dashboard.html')
```

Key Takeaways

- Flask-Login simplifies user authentication in Flask apps.
- Enables secure session management and login/logout handling.
- Protect routes using @login_required.
- Ready to build secure Flask applications with user authentication workflows.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day45` `Flask` `SQLAlchemy` `ORM` `Database` `FlaskSQLAlchemy` `Flask-Login` `UserAuthentication`
