# 📘 Day 48 of #60DaysOfLearning2025

## Topic: Django Class-Based Views (CBVs)

Today, I explored **Django Class-Based Views**, which allow for reusable, modular, and organized views in Django applications.

---

## 🔗 Resource

- [Django Official Guide – Class-Based Views](https://docs.djangoproject.com/en/stable/topics/class-based-views/)

---

## 🧠 What are Class-Based Views?

✅ In Django, **views handle HTTP requests and responses**.  
✅ CBVs use **Python classes instead of functions**, promoting **code reusability and organization**.  
✅ Allow the use of mixins to add reusable behaviors across views.

---

## 🛠️ Basic Example of CBV

### Function-Based View

```python
from django.http import HttpResponse

class MyView(View):
    def get(self, request):
        return HttpResponse("Hello, World!")
```

### Class-Based View

```python
from django.views.generic import View

class MyView(View):
    def get(self, request):
        return HttpResponse("Hello, World!")
```

In urls.py

```python
from django.urls import path
from .views import MyView

urlpatterns = [
    path('hello/', MyView.as_view(), name='hello'),
]
```

Example: ListView

```python
from django.views.generic import ListView
from .models import Book

class BookListView(ListView):
    model = Book
    template_name = 'books/book_list.html'
    context_object_name = 'books'
```

In urls.py:

```python
from django.urls import path
from .views import BookListView

urlpatterns = [
    path('books/', BookListView.as_view(), name='book-list'),
]
```

---

## Key Takeaways

- Django CBVs simplify view creation and management.
- Promote code reusability and organization.
- Allow the use of mixins for shared behaviors.
