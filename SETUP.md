# 🎮 RPG Profile — Deployment Guide

## 📁 File Structure

```
YourUsername/          ← repo name MUST match your GitHub username exactly
├── README.md          ← the main profile (paste this at root)
└── assets/
    ├── hero_banner.svg      ← Dark Abyss (animated hero + pixel character)
    ├── forest_banner.svg    ← Enchanted Forest (About Me header)
    ├── lava_banner.svg      ← Lava Citadel (Tech Stack header)
    ├── tundra_banner.svg    ← Frozen Tundra (Stats header)
    ├── sky_banner.svg       ← Sky Realm (Quotes header)
    ├── crypt_banner.svg     ← Haunted Crypt (Games header)
    ├── gold_banner.svg      ← Golden Hall (Achievements header)
    └── moon_banner.svg      ← Moonlit Village (Contact header)
```

## ⚡ Quick Deploy Steps

1. Go to **github.com** → click the **+** → **New repository**
2. Name it **exactly** your GitHub username (e.g. `TeytannZ`)
3. Check ✓ "Initialize this repository" → click **Create repository**
4. Upload all files above (README.md + the entire `assets/` folder)
5. Done — your profile updates instantly! 🎉

## 🔧 What Works & Why

| Feature | How it works |
|---|---|
| Animated banners | SVG files with `<foreignObject>` + CSS `@keyframes` — GitHub renders CSS animations inside SVGs |
| Pixel character | Drawn entirely with CSS divs inside the hero SVG |
| Stats widgets | External image URLs from github-readme-stats (already in your old README) |
| Pac-Man & Snake | SVG animations hosted by abozanona/platane repos (same as before) |
| Trophies | github-profile-trophy widget (same as before) |
| Badge icons | shields.io badges — work natively in GitHub markdown |
| Light/Dark mode | The `<picture>` element with `prefers-color-scheme` handles Pac-Man & Snake |
| Profile views | komarev.com counter badge (same as before) |

## ⚠️ GitHub Limitations (why this approach)

GitHub **strips** `<style>`, `<script>`, and most `style=` attributes directly in README.md.
The workaround: **SVG files** referenced via `<img>` tags CAN contain their own `<style>` blocks
with full CSS animations. This is a well-known, widely-used technique (used by thousands of profiles).

**What won't work on GitHub that worked in the standalone HTML:**
- JavaScript (no hover interactions, no counter animations)
- Scroll-triggered reveals
- Click/hover states on cards

**What DOES work:**
- All CSS animations inside SVGs (starfields, fireflies, embers, snowflakes, shooting stars, glowing titles, floating particles, the pixel character idle animation, the XP bar shine)
- All external widget images
- All badge icons
- The full RPG visual identity across all 8 dimensions
