# 🚀 Day 6: Introduction to Bash Scripting

Welcome to **Day 6** of the **LSPP Leapfrog 60 Days of Learning Challenge**!

---

## 📚 Source

- **LinuxConfig**: [Bash Scripting Tutorial for Beginners](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)

---

## What I Learned

### 1. What is a Bash Script

A file containing a sequence of Bash commands—used to automate tasks by writing what you’d type in the shell.  
🔗 [Bash Scripting Tutorial – linuxconfig.org](https://linuxconfig.org/bash-scripting-tutorial)

### 2. Shebang & Execution

Scripts start with a shebang:

```bash
#!/bin/bash
```

Make it executable:

```bash
chmod +x myscript.sh
./myscript.sh
# Or: bash myscript.sh
```

### 3. Hello World Script

```bash
#!/bin/bash
echo "Hello World"
```

![output](/Day_06/Bash_Scripting/output/output.png)

### 4. Simple Backup Script

```bash
#!/bin/bash
tar -czf /tmp/myhome_$(date +%Y%m%d).tar.gz /home/$USER
```

### 5. Variables & Substitution

```bash
#!/bin/bash
greeting="LSPPDay_06"
user=$(whoami)
echo "$greeting, $user!"
```

![output](/Day_06/Bash_Scripting/output/output0.png)

`60DaysOfLearning` `LearningWithLeapfrog` `Linux` `Bash`  `BashScripting` `Day06`
