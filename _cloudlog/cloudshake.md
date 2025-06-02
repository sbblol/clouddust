---
layout: cloudpost
title: "Cloudshake"
excerpt: >
  Shaking off the old dust — this post marks the beginning of CloudDust: why I built it, how it works, and what it means to publish security ideas with clarity and control.
tags: [foundations, meta, start]
publish: draft
---

I’ve wanted to do this for a while. Write things down.  
Not just publish polished ideas, but document the process — the friction, the logic, and the dust in the air before anything settles.

**CloudDust** was born out of a need for a place that balances security depth with clarity, without noise.  
Not a newsletter, not a feed. Just a space where I can shake off the mental layers and expose what actually matters in day-to-day cloud security.

---

## 🐾 Why "Cloudshake"?

A dog steps out of water and does one thing instinctively: it shakes. Not because it’s planned, but because the body knows it needs clarity.

That’s what this post is — and what this whole project is.  
A **Cloudshake**: the intentional motion to remove what doesn’t belong and make room for real movement.

---

## 🧱 Why not use Medium / Notion / WordPress?

Because there’s no “Torah” without bread — and no bread without “Torah”.

A system without structure is noise. But a system without belief is hollow.  
CloudDust isn’t a clone of someone else's platform. It’s a deliberate act of making and believing — even if the plan isn’t perfect.

I’d rather build something flawed on purpose than imitate a polished illusion.

So I chose something:

- **Minimal** – Just Markdown and intention
- **Controlled** – No tracking, no likes, no embedded scripts
- **Secure by design** – No backend, no exposed state
- **Reproducible** – You can fork it, run it offline, and make it yours

> Imperfect is honest. Honest is secure.


---

## 🐳 The local workflow

The blog runs entirely offline using Docker.  
No Ruby installation, no npm, no surprises.

To try it yourself:  
➡️ [run-clouddust-locally](/code/run-clouddust-locally/)

That folder contains a `Dockerfile`, `docker-compose.yml`, and everything needed to spin up a full Jekyll environment locally.

---

## 🔒 Content control

From the start, I wanted to avoid leaking metadata — like timestamps, user agent fingerprints, and even unintended context.

So:
- Posts don’t use `_posts/`, but a custom `_cloudlog/` collection
- URLs don’t contain dates
- Internal file structure supports referencing without revealing chronology

This isn’t about hiding. It’s about designing a space where **signal > noise**, and publishing is intentional.

---

## 🎯 What to expect next

This blog will focus on:

- Simulating real-world cloud security gaps
- Documenting how security policies break — and why
- Building small tools to visualize or validate assumptions
- Sharing methods that make people say: *“Wait, can you actually do that?”*

---

Thanks for reading this far.  
This Cloudshake was just the first.

