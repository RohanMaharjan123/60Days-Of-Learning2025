# 📘 Day 46 of #60DaysOfLearning2025

## Topic: Django Introduction and Project Setup

Today, I started **Django**, a **high-level Python web framework**, by learning how to **install Django, create a project, and run the development server** using the official tutorial.

---

## 🔗 Resource

- [Django Official Tutorial Part 1](https://docs.djangoproject.com/en/stable/intro/tutorial01/)

---

## What is Django?

- **Django** is a **batteries-included web framework** for Python.  
- Emphasizes **rapid development and clean, pragmatic design**.  
- Comes with built-in admin, ORM, authentication, and security features.

---

## Installation

Install Django using pip:

```bash
pip install django
```

---

## Creating a Project

Create a new Django project:

```bash
django-admin startproject myproject
```

---

## Running the Development Server

Start the Django development server:

```bash
python manage.py runserver
```

---

Folder structure created:

```bash
myproject/
├── manage.py
├── myproject/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── README.md
```

Creating Your First App

Inside your project folder:

```bash
python manage.py startapp myapp
```

---

```bash
myapp/
    __init__.py
    admin.py
    apps.py
    migrations/
        __init__.py
    models.py
    tests.py
    views.py
```

## Key Takeaways

- Django is a high-level Python web framework.
- Emphasizes rapid development and clean, pragmatic design.
- Comes with built-in admin, ORM, authentication, and security features.
- Installation is straightforward with pip.
- Creating a project is quick and easy.
- Running the development server is straightforward.

---
