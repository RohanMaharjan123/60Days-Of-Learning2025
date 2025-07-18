# 📘 Day 47 of #60DaysOfLearning2025

## Topic: Django Models

Today, I explored **Django Models**, which define the structure of your database using Python classes, letting Django handle table creation, relationships, and data manipulation through its ORM.

---

## 🔗 Resource

- [Django Model Reference](https://docs.djangoproject.com/en/stable/ref/models/)

---

## 🧠 What are Django Models?

✅ **Models** in Django are Python classes that map to database tables.  
✅ Each attribute in the model represents a database field.  
✅ Django provides a powerful ORM for creating, querying, updating, and deleting data using Python syntax.

---

## 🛠️ Defining a Model

```python
from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=200)
    author = models.CharField(max_length=100)
    published_date = models.DateField()
    price = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return self.title
```

Create and Apply Migrations

```python
python manage.py makemigrations
python manage.py migrate
```

Creating Objects

```python
book = Book.objects.create(
    title="Deep Learning",
    author="Ian Goodfellow",
    published_date="2016-11-18",
    price=49.99
)
```

Querying Data

```python
books = Book.objects.all()
book = Book.objects.get(id=1)
books = Book.objects.filter(author="Ian Goodfellow")
```

Updating Data

```python
book = Book.objects.get(id=1)
book.price = 45.99
book.save()
```

Deleting Data

```python
book = Book.objects.get(id=1)
book.delete()
```

Key Takeaways

- Django models simplify database table creation and management.
- The ORM provides Pythonic CRUD operations on data.
- Easy to manage relationships using ForeignKey and ManyToManyField.
- Migrations handle schema changes safely and systematically.

`60DaysOfLearning` `LearningWithLeapfrog` `sql` `Day47` `Django Models` `Django ORM` `Django Migrations` `Django Relationships` `Django CRUD`
