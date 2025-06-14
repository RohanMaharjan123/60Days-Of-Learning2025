# 🐍 Day 13: Python Exceptions

Understanding exceptions in Python is crucial for writing robust and error-resistant code. Exceptions help you catch and handle errors gracefully without crashing your program.

---

- [RealPython - Python-Exceptions](https://realpython.com/python-exceptions/)  

## 🔥 What is an Exception?

An **exception** is an event that disrupts the normal flow of a program's execution. It occurs when a program encounters an unexpected situation.

---

## 🧱 Built-in Exception Types

| Exception           | Description                            |
|---------------------|----------------------------------------|
| `ZeroDivisionError` | Raised when dividing by zero           |
| `TypeError`         | Incompatible data types                |
| `ValueError`        | Invalid value passed to a function     |
| `FileNotFoundError` | File operation fails                   |
| `IndexError`        | Index out of range for a list          |
| `KeyError`          | Missing key in a dictionary            |

---

## ⚙️ Try/Except Syntax

```python
try:
    x = 10 / 0
except ZeroDivisionError:
    print("You can't divide by zero!")
```

### Catching Multiple Exceptions

```python
try:
    int("abc")
except (ValueError, TypeError) as e:
    print(f"Error occurred: {e}")
```

### Finally Block

```python
try:
    f = open("file.txt")
except FileNotFoundError:
    print("File not found")
finally:
    print("This always runs")
```

### Raising Exceptions Manually

```python
age = -1
if age < 0:
    raise ValueError("Age cannot be negative")
```

`60DaysOfLearning` `LearningWithLeapfrog` `Python`  `PythonProgramming`  `Day13` `Exception`
