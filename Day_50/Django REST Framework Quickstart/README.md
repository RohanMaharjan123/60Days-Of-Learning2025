# 📘 Day 50 of #60DaysOfLearning2025

## Topic: Django REST Framework Quickstart

Today, I explored **Django REST Framework (DRF)** to learn how to build **RESTful APIs in Django** for scalable and structured backend services.

---

## 🔗 Resource

- [Django REST Framework – Quickstart](https://www.django-rest-framework.org/tutorial/quickstart/)

---

## 🧠 What is Django REST Framework (DRF)?

✅ DRF is a **powerful, flexible toolkit for building Web APIs** in Django.  
✅ Supports serialization, authentication, permissions, and browsable API interfaces out of the box.  
✅ Helps build RESTful APIs easily for mobile apps, frontend frameworks, and microservices.

---

## ⚙️ Installation

Install DRF using pip:

```bash
pip install djangorestframework
```

Add 'rest_framework' to INSTALLED_APPS in settings.py:

```python
INSTALLED_APPS = [
    ...
    'rest_framework',
]
```

Basic API with DRF

Create a Django App

```python
python manage.py startapp snippets
```

Create a Serializer

```python
from rest_framework import serializers
from .models import Snippet

class SnippetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Snippet
        fields = ['id', 'title', 'code', 'linenos', 'language', 'style']
```

Create API Views

Using DRF’s generic views:

```python
from rest_framework import generics
from .models import Snippet
from .serializers import SnippetSerializer

class SnippetList(generics.ListCreateAPIView):
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer

class SnippetDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer
```

Configure URLs

In snippets/urls.py:

```python
from django.urls import path
from . import views

urlpatterns = [
    path('snippets/', views.SnippetList.as_view(), name='snippet-list'),
    path('snippets/<int:pk>/', views.SnippetDetail.as_view(), name='snippet-detail'),
]
```

In your project urls.py:

```python
from django.urls import path, include

urlpatterns = [
    path('api/', include('snippets.urls')),
]
```

Browsable API at your <http://127.0.0.1:8000/api/snippets/>

Key Takeaways

- DRF simplifies building REST APIs using Django.
- Supports serialization of data, API views, authentication, and permissions.
- Comes with a browsable API interface for quick testing.
- Helps build scalable backend services for mobile and frontend frameworks.

`60DaysOfLearning` `LearningWithLeapfrog` `Day50` `Django REST Framework Quickstart` `Django REST Framework Serializers` `Django REST Framework API Views` `Django REST Framework Authentication` `Django REST Framework Permissions`
