# 📘 Day 12: Reading and Writing Files in Python

**Resource**  

- [Real Python – Reading and Writing Files in Python](https://realpython.com/read-write-files-python/)

---

## What I Learned

### 🗃 Opening Files

Use the built-in `open()` function:

```python
file = open("example.txt", "r")  # "r" = read mode
print(file.read())
file.close()
```

## Using Context Manager (with)

```python
with open("example.txt", "r") as file:
    content = file.read()
    print(content)
```

## Writing to Files

```python
# Writing
with open("newfile.txt", "w") as file:
    file.write("Hello, world!")

# Appending
with open("newfile.txt", "a") as file:
    file.write("\nThis will be added.")
```

## Reading Line by Line

```python
with open("example.txt", "r") as file:
    for line in file:
        print(line.strip())
```

## File Modes Table

| Mode | Description                          |
|------|--------------------------------------|
| r    | Read (default)                       |
| w    | Write (overwrites existing content)  |
| a    | Append (write at the end of file)    |
| r+   | Read and write                       |
| b    | Binary mode                          |
| t    | Text mode (default)                  |
| x    | Exclusive creation (fail if exists)  |

## Pratice Exercise

```python
# Writing to a file
with open("sample.txt", "w") as file:
    file.write("Hello, this is line one!\n")
    file.write("And this is line two.\n")

# Appending more lines
with open("sample.txt", "a") as file:
    file.write("Appending this line.\n")

# Reading the file
with open("sample.txt", "r") as file:
    print("Reading contents of sample.txt:")
    for line in file:
        print(line.strip())
```

![output](./output.png)

`60DaysOfLearning` `LearningWithLeapfrog` `Python`  `PythonProgramming` `OOPS` `Day12` `FileHandling` `ReadingWritingFiles` `ContextManager` `FileModes`
