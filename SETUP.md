# ⚔️ The Developer Saga — Setup Guide

## Quick preview

**Double-click `preview.html`** in this folder to see the entire profile rendered in your browser
(it uses a real GitHub account's data as a stand-in so every card shows real numbers).

---

## Step 1 — Create your profile repository

1. GitHub → **+** → **New repository**
2. Name it **exactly your username** (username `ahmed` → repo `ahmed/ahmed`)
3. **Public** · check **"Add a README file"** → Create

## Step 2 — Replace the placeholders in README.md

| Placeholder | Replace with |
|---|---|
| `YOUR_NAME` | Your display name (appears in the banner) |
| `YOUR_USERNAME` | Your GitHub username — used in ~20 widget URLs, replace ALL |
| `YOUR_EMAIL@gmail.com` | Your email |
| `YOUR_DISCORD_ID` | Your numeric Discord user ID (Discord → Settings → Advanced → Developer Mode ON, then right-click your name → Copy User ID) |
| `YOUR_PORTFOLIO_URL` | Portfolio link — or delete that badge |
| `YOUR_REPO_1`, `YOUR_REPO_2` | Names of two repos to feature as "Completed Quests" |

Tip: open README.md in VS Code → `Ctrl+H` → Replace All for each one. Takes 2 minutes.

## Step 3 — Upload everything

Upload `README.md` + the whole `.github/workflows/` folder (4 files) to your profile repo.

## Step 4 — Enable Actions permissions

Repo **Settings** → **Actions** → **General** → Workflow permissions →
**"Read and write permissions"** → Save.

No personal access tokens needed — all 4 workflows run on the default `GITHUB_TOKEN`.

## Step 5 — Run the 4 workflows once

**Actions** tab → select each → **Run workflow**:

| Workflow | What it creates | Where |
|---|---|---|
| Generate Contribution Snake | Snake animation SVGs | `output` branch |
| Generate Pac-Man Contribution Graph | Pac-Man animation SVGs | `output-pacman` branch |
| Generate 3D Contribution Calendar | 3D calendar SVG | `main` / `profile-3d-contrib/` |
| Update Hadith of the Day | Today's hadith into README | `main` |

After all 4 finish, every image on your profile is live. They re-run automatically every day.

## Step 6 — Activate the live widgets (5 minutes total)

**🐾 GitAnimals pets** — visit [gitanimals.org](https://gitanimals.org), sign in with GitHub once.
Pets hatch automatically (~1 per 30 contributions) and level up as you commit.

**📡 Live Discord presence (Lanyard)** — join the Lanyard Discord server once: [discord.gg/lanyard](https://discord.gg/lanyard).
That's the whole setup — the card then shows your live Discord status, what you're playing, even Spotify.

## Notes

- The hadith rotates daily at 4 AM UTC — 30 authentic hadiths from Sahih al-Bukhari & Sahih Muslim, each with source cited.
- Stats cards on a brand-new account show small numbers — they grow with you. The design doesn't depend on big numbers.
- Every external service used was health-checked and is free with no token required.
- Dropped on purpose: github-profile-trophy (now behind a paywall — returns HTTP 402) and moe-counter (blocks GitHub's image proxy).
