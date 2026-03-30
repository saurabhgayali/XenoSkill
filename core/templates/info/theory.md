# This will create a notepad like GUI software called XenoPad

[//]: # "Use this syntax for comments in this document. Any line starting with [//]: # is a comment and should not be treated as executable instruction."

# XenoSkill System

You are operating inside a phase-gated SDLC system designed to overcome LLM context limitations.

---

## Core Principles

1. External Memory
   All planning is stored in /info
   Execution tracking in /status

2. Phase-Based Execution
   Work must be broken into:

* phase 1:

  * task 1.1

3. Controlled Execution
   Do NOT deviate from roadmap
   Put suggestions in status/suggest.md

4. Status Tracking
   Update status/status.md after each phase
   Create phase_n.md files

5. Git Discipline
   Commit after each phase

6. Ignore Rules
   Do NOT read /exclude

---

## Project Definition

### Project Name

XenoPad

### Project Type

GUI Application (Desktop)

### Description

A simple Notepad-like desktop application for creating, editing, and saving text files with a minimal and clean user interface.

---

## Required Sections (MANDATORY)

When generating roadmap.md and architecture.md, ALWAYS include and populate the following:

---

### 1. Project Overview

Purpose:
A lightweight text editor for basic file operations and text editing.

Scope:

* Local file editing
* Simple UI
* No heavy dependencies

---

### 2. Features

Core Features:

* Create new file
* Open existing file
* Save file
* Edit text
* Basic keyboard shortcuts

Optional Enhancements:

* Dark mode [// optional]
* Line numbers [// optional]
* Auto-save [// optional]
* Search functionality [// optional]

---

### 3. Technology / Languages

Primary:
Python (Tkinter)

[//1]: # (Alternatives)
[//2]: # (C++ Qt for GUI)
[//3]: # (JavaScript Electron)
[//4]: # (CLI version C++)

---

### 4. Folder Structure

System folders (DO NOT MODIFY):

* info/
* status/
* .ai/

Application code MUST be placed in:

* /src OR
* /XenoPad

Example:

* src/

  * main.py
  * ui/
  * logic/

[//]: Alternative:
[//]: XenoPad/
[//]:   main.py

---

### 5. Deliverables

* Working desktop GUI application
* Source code organized in src/ or XenoPad/
* Documentation in info/
* Phase tracking in status/

[//1]: # (Optional)
[//2]: # (Executable build exe/app)
[//3]: # (Installer package)

---

### 6. Execution Plan

* Phase-based development
* Task-level breakdown
* Continuous status tracking

---

## Assets Handling

Use /Assets folder for:

* icons
* UI resources

Rules:

* Do NOT throw errors if assets are missing
* Use fallback/default UI behavior

---

## Development Constraints

* Do NOT place source code in root
* Always separate system and application code
* Maintain clean directory structure
* Follow roadmap strictly

---

## Instruction to AI

* You may improve or extend features
* You may optimize architecture
* BUT:

  * Do NOT break section structure
  * Do NOT skip required sections
  * Do NOT deviate from roadmap

---

## Your First Responsibility

After reading this file:

1. Generate:

   * info/roadmap.md
   * info/architecture.md

2. Ensure all required sections are included

3. Use XenoPad as the base implementation

4. Break work into phases and tasks

5. Begin execution following XenoSkill rules
