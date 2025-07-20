# 📘 Day 49 of #60DaysOfLearning2025

## Topic: Django Forms

Today, I explored **Django Forms**, which simplify collecting and validating user input while keeping data secure and manageable within Django projects.

---

## 🔗 Resource

- [Django Official Forms Reference](https://docs.djangoproject.com/en/stable/ref/forms/)

---

## 🧠 What are Django Forms?

✅ Django Forms allow:
- Collecting user input via HTML forms.
- Validation and cleaning of user data.
- Safe, secure handling of form submissions.

✅ Forms can be created using:
- **`forms.Form`**: For manually defining form fields.
- **`forms.ModelForm`**: Automatically create forms from Django models.

---

## 🛠️ Basic Form Example

```python
from django import forms

class ContactForm(forms.Form):
    name = forms.CharField(max_length=100)
    email = forms.EmailField()
    message = forms.CharField(widget=forms.Textarea)
```

Using the Form in a View

```python
from django.shortcuts import render
from .forms import ContactForm

def contact_view(request):
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            # Process data
            name = form.cleaned_data['name']
            email = form.cleaned_data['email']
            message = form.cleaned_data['message']
            # You can now save data or send emails
    else:
        form = ContactForm()
    return render(request, "contact.html", {"form": form})
```

For forms tied to models, use forms.ModelForm:

```python
from django import forms
from .models import Book

class BookForm(forms.ModelForm):
    class Meta:
        model = Book
        fields = ['title', 'author', 'published_date', 'price']
```

In view:

```python
from django.shortcuts import render, redirect
from .forms import BookForm

def add_book(request):
    if request.method == "POST":
        form = BookForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('book_list')
    else:
        form = BookForm()
    return render(request, "add_book.html", {"form": form})
```

Form Validation

```python
def clean_name(self):
    data = self.cleaned_data['name']
    if "spam" in data:
        raise forms.ValidationError("Invalid name: contains 'spam'")
    return data
```

Key Takeaways

- Django Forms securely handle user input and validation.
- Use forms.Form for custom forms and forms.ModelForm for model-backed forms.
- Integrated seamlessly with views and templates for dynamic form rendering and submission.
- Enhances productivity when building create/update features in Django applications.