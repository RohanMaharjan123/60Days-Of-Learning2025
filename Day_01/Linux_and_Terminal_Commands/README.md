# Day 1: Linux Command Line Basics

Welcome to Day 1 of the **LSPP Leapfrog 60 Days of Learning Challenge**!

**Topic:** Linux Command Line for Beginners

**Tutorial Source:** [Ubuntu CLI for Beginners](https://ubuntu.com/tutorials/command-line-for-beginners)

---

## What I Learned Today

### 1. [What is the Command Line?](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview)

The command line is a powerful text-based interface to control your computer without using the graphical interface. Developers and system admins use it because it’s fast, efficient, and scriptable.

---

### 2. [A Brief History of the Command Line](https://ubuntu.com/tutorials/command-line-for-beginners#2-a-brief-history-lesson)

The CLI (Command Line Interface) dates back to early computing where GUIs didn’t exist. Tools like UNIX shell were foundational, evolving into today’s bash and other modern shells used in Linux systems.

---

### 3. [How to Open the Terminal](https://ubuntu.com/tutorials/command-line-for-beginners#3-opening-a-terminal)

- Shortcut: `Ctrl + Alt + T`
- Alternatively: Search "Terminal" in your application menu

---

### 4. [Creating Folders and Files](https://ubuntu.com/tutorials/command-line-for-beginners#4-creating-folders-and-files)

```bash
mkdir foldername      # Creates a directory
touch filename.txt    # Creates an empty file
nano filename.txt     # Opens a basic text editor
```

### 5. [Moving and Manipulating Files](https://ubuntu.com/tutorials/command-line-for-beginners#5-moving-and-manipulating-files)

```bash
mv source target      # Move or rename files/folders
cp source target      # Copy files/folders
rm filename           # Remove files
rmdir foldername      # Remove empty directories
rm -r foldername      # Remove folder and contents
```

### 6. [A Bit of Plumbing (I/O Redirection & Pipes)](https://ubuntu.com/tutorials/command-line-for-beginners#6-a-bit-of-plumbing)

```bash
command > file.txt     # Redirect output to a file (overwrite)
command >> file.txt    # Redirect output to a file (append)
command < input.txt    # Read input from a file
command1 | command2    # Pipe output of one command into another

# Example:
ls | grep "txt"
```

### 7. [The Command Line and the Superuser](https://ubuntu.com/tutorials/command-line-for-beginners#7-the-command-line-and-the-superuser)

```bash
sudo command           # Run a command as superuser
sudo apt update        # Update package info (needs admin rights)
```

### 8. [Hidden Files](https://ubuntu.com/tutorials/command-line-for-beginners#8-hidden-files)

```bash
ls -a    # View hidden files
```

Tags

 #60DaysOfLearning #LearningWithLeapfrog #Linux #Ubuntu #DevJourney