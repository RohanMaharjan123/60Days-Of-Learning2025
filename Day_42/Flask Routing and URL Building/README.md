# 📘 Day 42 of #60DaysOfLearning2025

## Topic: Flask Routing and URL Building

Today, I learned about **Routing in Flask**, which allows defining how URLs are handled, and how to **use dynamic routes, URL building, and view functions** in a Flask application.

---

## 🔗 Resource

- [Flask Official Quickstart: Routing](https://flask.palletsprojects.com/en/2.2.x/quickstart/#routing)

---

## 🧠 What I Learned

### 🚀 What is Routing in Flask?

✅ **Routing** connects URL patterns to **Python functions (views)** that return responses.  
✅ The `@app.route()` decorator is used to define which URL should trigger which function.

---

## ⚙️ Basic Routing

```python
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to the Home Page!"

@app.route("/about")
def about():
    return "This is the About Page!"
```

Dynamic Routing

You can capture parts of the URL as variables:

```python
@app.route("/user/<username>")
def show_user_profile(username):
    return f"User: {username}"

@app.route("/post/<int:post_id>")
def show_post(post_id):
    return f"Post ID: {post_id}"
```

URL Building

Flask provides a `url_for()` function to generate URLs for routes:

```python
from flask import url_for

with app.test_request_context():
    print(url_for("home"))  # Output: "/"
    print(url_for("about"))  # Output: "/about"
    print(url_for("show_user_profile", username="rohan"))  # Output: "/user/rohan"
    print(url_for("show_post", post_id=123))  # Output: "/post/123"
```

In the above example:

- `url_for("home")` generates the URL for the `home` function, which is the root URL (`"/"`).
- `url_for("about")` generates the URL for the `about` function, which is `/about`.
- `url_for("show_user_profile", username="rohan")` generates the URL for the `show_user_profile` function with the variable `username` set to `"rohan"`, resulting in `/user/rohan`.
- `url_for("show_post", post_id=123)` generates the URL for the `show_post` function with the variable `post_id` set to `123`, resulting in `/post/123`.    

Practice Plan

Created a Flask app with:
• Static routes (/, /about, /login).
• Dynamic routes (/user/<username>, /post/<int:post_id>).
• Printed and used url_for() for dynamic URL generation.

Tested routes using the browser and Postman to verify outputs.

Key Takeaways

- Flask makes routing easy and clean using decorators.
- Dynamic routing helps capture URL variables for user-specific or content-specific pages.
- Using url_for() keeps URL generation consistent and maintainable.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day42` `Flask` `Routing` `URLBuilding`
