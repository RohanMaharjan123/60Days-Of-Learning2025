class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        return f"{self.name} says woof!"

my_dog = Dog("Buddy", 3)
print(my_dog.bark())  # Output: Buddy says woof!

class Animal:
    def speak(self):
        return "Makes a sound"

class Cat(Animal):
    def speak(self):
        return "Meow"

c = Cat()
print(c.speak())  # Output: Meow

print(isinstance(my_dog, Dog))      # True
print(issubclass(Cat, Animal))      # True