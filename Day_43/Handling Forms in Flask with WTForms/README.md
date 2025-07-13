# 📘 Day 43 of #60DaysOfLearning2025

## Topic: Handling Forms in Flask with WTForms

Today, I explored **WTForms integration in Flask** to handle **form creation, validation, and secure processing** in web applications.

---

## 🔗 Resource

- [Flask Official Guide – WTForms Integration](https://flask.palletsprojects.com/en/2.2.x/patterns/wtforms/)

---

## 🧠 What I Learned

### 🚀 What is WTForms?

**WTForms** is a flexible forms validation and rendering library for Python and Flask.  

- Helps in creating **secure, validated forms** with CSRF protection and clean field definitions.

---

## ⚙️ Installing WTForms

Install using pip:

```bash
pip install flask-wtf
```

---

## 📝 Creating a Simple Form

### Define Fields

Initiate a form class with fields like `StringField`, `PasswordField`, `SubmitField`, etc.

```python
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired, Email, EqualTo

class RegistrationForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired()])
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    confirm_password = PasswordField('Confirm Password', validators=[DataRequired(), EqualTo('password')])
    submit = SubmitField('Register')
```

### Render and Validate

Render the form in a template and use `form.validate_on_submit()` to check for validation.

```python
@app.route('/register', methods=['GET', 'POST'])
def register():
    form = RegistrationForm()
    if form.validate_on_submit():
        # Process form data
        return redirect(url_for('home'))
    return render_template('register.html', form=form)
```

Configuring Flask with WTForms

```python
from flask import Flask

app = Flask(__name__)
app.secret_key = "your_secret_key"  # Required for CSRF protection
```

Creating a Form with WTForms

```python
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired

class LoginForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Login')
```

Using the Form in Flask Routes

```python
from flask import render_template, redirect, url_for, flash

@app.route("/login", methods=["GET", "POST"])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        flash(f"Logged in as {form.username.data}")
        return redirect(url_for("home"))
    return render_template("login.html", form=form)
```

Example login.html Template

```html
<!doctype html>
<title>Login</title>
<h1>Login</h1>
<form method="POST">
    {{ form.hidden_tag() }}
    {{ form.username.label }} {{ form.username(size=32) }}<br>
    {{ form.password.label }} {{ form.password(size=32) }}<br>
    {{ form.submit() }}
</form>
```

Key Takeaways

- WTForms simplifies form management and validation in Flask apps.
- Ensures secure forms with CSRF protection.
- Easily integrates with Flask routes and Jinja2 templates.
- Useful for building user authentication, search, and data submission forms in projects.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day43` `Flask` `Routing` `URLBuilding` `WTForms` `FlaskWTForms`
