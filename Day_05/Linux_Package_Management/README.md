# Day 5: Linux Package Management - APT vs YUM

Welcome to Day 5 of the LSPP Leapfrog 60 Days of Learning Challenge!

## Topic: Linux Package Management

## 📘 Resources Used

- [APT: Ubuntu APT Wiki](https://wiki.debian.org/Apt)
- [YUM: YUM documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-yum)

### 📦 What is Package Management?

Package managers are tools that automate the process of installing, upgrading, configuring, and removing software packages in Linux.

---

## APT (Advanced Package Tool) - Debian/Ubuntu-based Systems

APT works with `.deb` packages.

### Common APT Commands

| Command                         | Description                              |
|----------------------------------|------------------------------------------|
| `sudo apt update`               | Update list of available packages        |
| `sudo apt upgrade`              | Upgrade all installed packages           |
| `sudo apt install <pkg>`        | Install a new package                    |
| `sudo apt remove <pkg>`         | Remove a package                         |
| `sudo apt purge <pkg>`          | Remove a package with its config files   |
| `apt search <pkg>`              | Search for a package                     |
| `apt list --installed`          | List installed packages                  |

---

## 🍽️ YUM (Yellowdog Updater, Modified) - RHEL/CentOS-based Systems

YUM works with `.rpm` packages.

### Common YUM Commands

| Command                         | Description                              |
|----------------------------------|------------------------------------------|
| `sudo yum update`               | Update all system packages               |
| `sudo yum install <pkg>`        | Install a package                        |
| `sudo yum remove <pkg>`         | Remove a package                         |
| `yum search <pkg>`              | Search for a package                     |
| `yum list installed`            | List installed packages                  |
| `yum info <pkg>`                | Show detailed package info               |

---

## 🔍 Key Differences

| Feature          | APT                            | YUM                            |
|------------------|--------------------------------|--------------------------------|
| Used In          | Debian, Ubuntu                 | Red Hat, CentOS, Fedora        |
| Package Type     | `.deb`                         | `.rpm`                         |
| Command Syntax   | `apt`                          | `yum`                          |
| Dependency Mgmt  | Built-in                       | Built-in                       |

---

## 💡 Bonus Commands

```bash
# Clear package cache
sudo apt clean
sudo yum clean all

# Check if a package is installed
dpkg -l | grep <pkg>     # Debian-based
rpm -qa | grep <pkg>     # RedHat-based
```

`60DaysOfLearning` `LearningWithLeapfrog` `Linux` `APT` `YUM` `PackageManagement` `Day05`
