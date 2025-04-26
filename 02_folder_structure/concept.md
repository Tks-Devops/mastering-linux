# 📂 Linux Folder Structure

## 📜 Table of Contents
1. [Introduction](#introduction)
2. [Overview of Linux Folder Structure](#overview-of-linux-folder-structure)
   - [/](#root-directory)
   - [/bin](#bin)
   - [/etc](#etc)
   - [/home](#home)
   - [/var](#var)
3. [Key Concepts](#key-concepts)
4. [Conclusion](#conclusion)

---

## 📝 Introduction
The Linux file system is a tree-like structure where all directories and files are organized under the root directory `/`. Understanding this structure is essential for Linux users and administrators.

---

## 📂 Overview of Linux Folder Structure

### `/` (Root Directory)
- **Purpose**: The top-level directory of the Linux file system.
- **Contains**: System directories like `/bin`, `/etc`, `/home`, etc.

### `/bin`
- **Purpose**: Contains essential binaries (commands) needed for the system to boot and run.
- **Example Commands**: `ls`, `cat`, `mkdir`.

### `/etc`
- **Purpose**: Contains configuration files for the system.
- **Examples**: `passwd`, `hosts`.

### `/home`
- **Purpose**: Home directories for users.
- **Example**: `/home/username`.

### `/var`
- **Purpose**: Contains variable data like logs, spool files, and temporary files.
- **Examples**: `/var/log`, `/var/spool`.

---

## 💡 Key Concepts
- **Absolute vs. Relative Paths**:
  - Absolute paths start from `/` (e.g., `/home/user/documents`).
  - Relative paths depend on the current directory (e.g., `../documents`).
- **File Permissions**:
  - Files and directories have read (`r`), write (`w`), and execute (`x`) permissions.
  - Use `chmod` to modify permissions.

---

## 📚 Conclusion
The Linux file system is designed to be logical and efficient, providing a clear separation of system files, user files, and application data. Familiarity with this structure is crucial for effective Linux usage.

---

## 🔗 References
- [Linux File System Hierarchy](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)
- [Linux Documentation](https://www.kernel.org/doc/html/latest/)
