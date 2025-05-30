# CloudDust Vocabulary – To Do & Ideas

This file tracks all ongoing ideas, tasks, and future directions for developing the CloudDust vocabulary as a meaningful, reusable, and evolving concept system.

---

## ✅ Core Goals

- Build a **living metaphor library** for expressing security ideas in simple, powerful ways.
- Enable **analogy-based storytelling** inside posts.
- Maintain **structured, tagged vocabulary** in `dust.json`.
- Lay the groundwork for **interactive UX** around these ideas.

---

## 📁 Current Files

- `dust.json` – vocabulary entries
- `dust.schema.json` – schema for consistency and extensibility
- `README.md` – concept, purpose, structure
- `todo.md` – this file

---

## 📌 Tasks & Features

### 🔹 Data & Structure

- [x] Create base `dust.json` structure
- [x] Define JSON schema with validation
- [ ] Add additional fields: `tone`, `humor`, `usedInPosts`, `relevanceScore`
- [ ] Write curation guidelines (what qualifies as a good metaphor)

### 🔹 Presentation

- [x] Display vocabulary manually in post (`Cloudshake`)
- [x] Create `vocabulary.html` – standalone glossary page
- [x] Add external CSS (`vocabulary.css`) for visual clarity
- [ ] Add category filters (JS buttons or dropdown)
- [ ] Add “random metaphor” block (for homepage or footer)
- [ ] Emoji-based legend and icon guide

### 🔹 Editorial Use

- [ ] Build Liquid snippet to inject vocabulary cards into posts
- [ ] Define a consistent style for referencing vocabulary in markdown (inline or sidebar block)
- [ ] Create an index of all posts referencing each concept (`linkedPost`)

### 🔹 AI + Automation (Idea Phase)

- [x] Create base prompt library under `tools/prompts/`
- [ ] AI suggestion tool: recommend metaphors for new posts
- [ ] GPT integration: explain vocabulary entry in plain language / generate humorous variant
- [ ] LLM model: classify new analogies by category & tone
- [ ] Editor tool: suggest unused metaphors relevant to draft
- [ ] Prompt to enrich existing post with vocabulary
- [ ] Prompt to translate vocabulary entry to Hebrew

### 🔹 Creative Extensions

- [ ] Add humorous `reaction` lines per concept
- [ ] Enable "mood mode": filter by tone (serious / playful / ironic)
- [ ] Use vocabulary as part of tag cloud / visual hierarchy
- [ ] Optional SVG icon set to supplement emojis
- [ ] Include Hebrew translation layer (in future?)

---

## 🧠 Notes & Observations

- Vocabulary should evolve **organically** based on blog content and communication style.
- Keep analogies simple, visual, and tied to real-world experiences.
- Even silly metaphors can serve as **powerful hooks** when used with care.

---

## 🗓️ Next Steps (Priority)

- [x] Create `vocabulary.html` static page with rendered list from `dust.json`
- [x] Add external CSS and hover styling
- [ ] Add 5–10 more vocabulary entries based on real blog themes
- [ ] Draft filtering UI (client-side JS)
- [ ] Create prompt-UI builder or suggest integration path
