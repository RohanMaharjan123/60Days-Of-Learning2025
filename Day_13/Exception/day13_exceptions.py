try:
    result = 10 / 0
except ZeroDivisionError:
    print("You can't divide by zero!")

# Catching multiple exceptions
try:
    number = int("abc")
except (ValueError, TypeError) as error:
    print(f"An error occurred: {error}")

try:
    value = int(input("Enter a number: "))
except ValueError:
    print("That's not a number!")
else:
    print(f"You entered: {value}")

# Try-Except-Finally
try:
    f = open("nonexistent_file.txt")
except FileNotFoundError:
    print("File not found.")
finally:
    print("🔁 This always runs.")

# Raising an exception
age = -5
if age < 0:
    raise ValueError("Age cannot be negative")

# custom exception
class CustomError(Exception):
    pass

def check_even(n):
    if n % 2 != 0:
        raise CustomError("Only even numbers are allowed")

try:
    check_even(3)
except CustomError as ce:
    print(ce)