# 📘 Day 9 of #60DaysOfLearning2025 — Python Functions

Today’s focus: **Defining Your Own Python Functions**

> Functions help break code into reusable and manageable pieces. Let's explore how to define and use them effectively.

---

## What I Learned

## Resource

- [Real Python – Defining Your Own Python Function](https://realpython.com/defining-your-own-python-function/)

### Defining a Function

```python
def greet():
    print("Hello, Lae!")
```

### Function with Parameters

```python
def greet_user(name):
    print(f"Hello, {name}!")
```

### Return Values

```python
def add(a, b):
    return a + b

result = add(3, 5)
print(result)  # Output: 8
```

### Default Parameters

```python
def greet(name="Rohan"):
    print(f"Hi {name}!")

greet()           # Hi Rohan!
greet("Aneya")     # Hi Aneya!
```

### Docstrings (Function Description)

```python
def square(x):
    """Returns the square of a number."""
    return x * x
```
