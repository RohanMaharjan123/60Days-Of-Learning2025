# 📘 Day 11: Object-Oriented Programming in Python

**Resource**  

- [Real Python – Object-Oriented Programming in Python 3](https://realpython.com/python3-object-oriented-programming/)

---

## What I Learned

### OOP Basics

- Object-Oriented Programming (OOP) helps organize code into reusable **classes** and **objects**.
- A class is like a blueprint, and an object is an instance of that class.

---

### 🧱 Defining a Class and Creating Objects

```python
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        return f"{self.name} says woof!"

my_dog = Dog("Buddy", 3)
print(my_dog.bark())  # Output: Buddy says woof!
```

### Inheritance

- Inheritance allows a class to inherit attributes and methods from another class.

```python
class Animal:
    def speak(self):
        return "Makes a sound"

class Cat(Animal):
    def speak(self):
        return "Meow"

c = Cat()
print(c.speak())  # Output: Meow
```

### Method Overriding

- Child classes can override methods of the parent class for specialized behavior.

⸻

### Encapsulation

- Protects data by using private attributes (_ or __ prefix) and getter/setter methods.

```python
class BankAccount:
    def __init__(self, balance):
        self.__balance = balance

    def get_balance(self):
        return self.__balance

account = BankAccount(1000)
print(account.get_balance())  # Output: 1000
```

`60DaysOfLearning` `LearningWithLeapfrog` `Python`  `PythonProgramming` `OOPS` `Day11`