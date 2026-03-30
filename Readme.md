# XenoSkill

**XenoSkill** is a phase-gated SDLC layer for AI that enables long-horizon project execution by externalizing memory beyond LLM context limits.

It transforms stateless AI into a structured, reliable execution engine for multi-phase software development.

---

##  Install (One-Line Setup)

### 🪟 Windows (PowerShell)

```
irm https://raw.githubusercontent.com/saurabhgayali/XenoSkill/refs/heads/master/init.ps1 | iex
```

### 🐧 Linux / macOS

```
curl -sSL https://raw.githubusercontent.com/saurabhgayali/XenoSkill/refs/heads/master/init.sh | bash
```

---

## What XenoSkill Does

* Creates a structured SDLC workspace:

  * `info/` → planning & architecture
  * `status/` → execution tracking
  * `.ai/` → AI behavior rules
  * `exclude/` → ignored context space

* Injects a **phase-driven execution model**

* Maintains **persistent project memory outside AI context**

* Prevents scope drift using controlled suggestion tracking

* Enables **multi-session, long-horizon development**

---

## ⚙️ How It Works

1. Run the install command
2. XenoSkill initializes your project structure
3. Open:

```
info/INIT_PROMPT.md
```

4. Paste it into your AI (Copilot / Claude / ChatGPT)
5. AI will:

   * Generate `roadmap.md` and `architecture.md`
   * Break work into phases and tasks
   * Execute development step-by-step

---

## Project Structure

```
project/
│
├── info/
│   ├── theory.md
│   ├── INIT_PROMPT.md
│   ├── roadmap.md
│   ├── architecture.md
│
├── status/
│   ├── status.md
│   ├── suggest.md
│   ├── phase_1.md
│   ├── phase_2.md
│
├── .ai/
│   ├── AI_RULES.md
│
├── src/ OR XenoPad/   ← application code
│
├── exclude/
├── builder/
├── xenoskill-finalize.sh
├── xenoskill-finalize.ps1
└── .gitignore
```

---

## Execution Model

* Development is divided into **phases**
* Each phase contains **tasks**
* AI must:

  * Follow roadmap strictly
  * Update `status/status.md`
  * Create `phase_n.md` files
  * Log ideas in `status/suggest.md`
  * Suggest commits after each phase

---

## Core Principles

### External Memory

All state is stored in files, not in AI context.

### Phase-Gated Execution

Work progresses in controlled steps.

### Drift Control

Suggestions are isolated from execution.

### Session Independence

Projects can resume anytime without losing direction.

---

## Finalizing Your Project

Once development is complete:

### Linux / macOS

```
bash xenoskill-finalize.sh
```

### Windows

```
.\xenoskill-finalize.ps1
```

This will:

* Archive AI execution layers (`status/`, `.ai/`)
* Clean workspace
* Leave only:

  * Source code
  * Documentation

---

## ❗ Not an Agent

XenoSkill does **not** automate development.

It defines a **structured execution system** that any AI can follow:

* GitHub Copilot
* Claude
* Codex

---

## Philosophy

LLMs forget.
Software projects don’t.

**XenoSkill bridges that gap.**

---

## Tagline

**XenoSkill — Make AI remember what it builds.**

---

## License

![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)

Copyright © 2026 Saurabh Gayali

This project is licensed under the Apache License, Version 2.0.

You may use, modify, and distribute this software in accordance with the License.

Full license text:
https://www.apache.org/licenses/LICENSE-2.0