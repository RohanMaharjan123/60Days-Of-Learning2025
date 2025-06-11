# ✅ Day 8 of #60DaysOfLearning – Python Conditionals 🔀

## 📘 Source

- [Real Python – Conditional Statements](https://realpython.com/python-conditional-statements/)

---

## 🧠 What I Learned Today

### `if` Statement

Executes a block of code if the condition is `True`.

```python
age = 18

if age >= 18:
    print("You're an adult!")
```

### if-else Statement

```python
age = 16

if age >= 18:
    print("You're an adult!")
else:
    print("You're a minor!")
```

### if-elif-else Ladder

```python
marks = 75

if marks >= 90:
    print("Grade A")
elif marks >= 75:
    print("Grade B")
elif marks >= 60:
    print("Grade C")
else:
    print("Grade D")
```

### Nested Conditionals

```python
num = 10

if num > 0:
    if num % 2 == 0:
        print("Positive even number")
    else:
        print("Positive odd number")
```

## 🔁 Comparison Operators in Python

These operators compare two values and return a Boolean result (`True` or `False`).

| Operator | Name              | Example         | Result            |
|----------|-------------------|------------------|--------------------|
| `==`     | Equal to          | `5 == 5`         | `True`             |
| `!=`     | Not equal to      | `5 != 3`         | `True`             |
| `>`      | Greater than      | `7 > 4`          | `True`             |
| `<`      | Less than         | `2 < 10`         | `True`             |
| `>=`     | Greater or equal  | `5 >= 5`         | `True`             |
| `<=`     | Less or equal     | `3 <= 4`         | `True`             |

---

## 🔗 Logical Operators in Python

Used to combine conditional statements.

| Operator | Name     | Example                             | Result       |
|----------|----------|-------------------------------------|--------------|
| `and`    | Logical AND  | `True and False`                   | `False`      |
| `or`     | Logical OR   | `True or False`                    | `True`       |
| `not`    | Logical NOT  | `not True`                         | `False`      |

### Example Usage

```python
# and operator
age = 25
has_license = True

if age >= 18 and has_license:
    print("You can drive.")  # Output: You can drive.

# or operator
is_weekend = True
is_holiday = False

if is_weekend or is_holiday:
    print("You can rest.")  # Output: You can rest.

# not operator
logged_in = False

if not logged_in:
    print("Please log in.")  # Output: Please log in.
```

### Ternary Conditional (Inline If)

```python
age = 20
status = "Adult" if age >= 18 else "Minor"
print(status)
```

`60DaysOfLearning` `LearningWithLeapfrog` `Python`  `PythonProgramming` `PythonConditions` `Day08`
