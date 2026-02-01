# 🎮 TEYTANN'S EPIC RPG GITHUB PROFILE - SETUP GUIDE 🎮

## 🌟 Welcome, Brave Developer!

This is your complete guide to installing and customizing your legendary RPG-themed GitHub profile!

---

## 📋 QUICK START QUEST

### Step 1: Create Your Profile Repository
1. Create a new repository with the **exact same name** as your GitHub username: `TeytannZ`
2. Make sure it's **public**
3. Initialize it with a README.md

### Step 2: Deploy the Epic Profile
1. Copy the contents of `README.md` from this project
2. Paste it into your profile repository's README.md
3. Commit and push!

---

## 🔧 CUSTOMIZATION QUESTS

### ⚔️ Replace Username References
Find and replace all instances of `TeytannZ` with your GitHub username:
- In all GitHub stats badges
- In contribution graphs
- In profile links
- In trophy displays

### 🎨 Color Scheme Customization
Each "dimension" has its own color theme. Modify these in the capsule-render and badge URLs:

#### Dimension Color Codes:
- **Celestial Gates**: `gradient&customColorList=6,11,20` (Blue/Purple)
- **Crimson Forge**: `#FF4500`, `#1a0000` (Red/Dark Red)
- **Crystal Caves**: `#00FFFF`, `#000428` (Cyan/Dark Blue)
- **Emerald Forest**: `#00FF00` (Green)
- **Golden Hall**: `#FFD700` (Gold)
- **Void Sanctum**: `#9370DB` (Purple)
- **Astral Nexus**: `#FF1493` (Pink)
- **Prismatic Realm**: `#00CED1` (Turquoise)

### 🖼️ Custom Pixel Art Assets

The profile includes custom pixel art! To use them:

1. **Upload to Your Repository**:
   ```bash
   # Copy the assets folder to your profile repo
   git add assets/
   git commit -m "Add epic pixel art assets"
   git push
   ```

2. **Update Image References**:
   Replace the asset paths in README.md:
   ```markdown
   <!-- Example -->
   <img src="assets/pixel-hero.svg" width="100"/>
   ```

---

## 🎯 ADVANCED CUSTOMIZATION

### 📊 Stats & Metrics Setup

#### GitHub Stats
The stats cards use `github-readme-stats`. Customize themes:
```
theme=radical
theme=tokyonight
theme=cobalt
theme=gruvbox
theme=nord
```

#### Contribution Snake
To enable the snake animation:
1. Go to your repository settings
2. Actions → General → Enable workflows
3. Create `.github/workflows/snake.yml`:

```yaml
name: Generate Snake

on:
  schedule:
    - cron: "0 */6 * * *"
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: Platane/snk@v3
        with:
          github_user_name: ${{ github.repository_owner }}
          outputs: |
            dist/github-contribution-grid-snake.svg
            dist/github-contribution-grid-snake-dark.svg?palette=github-dark
      - uses: crazy-max/ghaction-github-pages@v3.1.0
        with:
          target_branch: output
          build_dir: dist
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

---

## 🔗 SOCIAL LINKS CUSTOMIZATION

Update your social media portals:

```markdown
<!-- Discord -->
<a href="https://discord.com/users/YOUR_DISCORD_ID">

<!-- Email -->
<a href="mailto:your.email@example.com">

<!-- LinkedIn -->
<a href="https://linkedin.com/in/your-profile">

<!-- GitHub -->
<a href="https://github.com/YOUR_USERNAME">
```

---

## 🎨 PIXEL ART GENERATION (OPTIONAL)

Want to create more custom pixel art?

### Recommended Tools:
1. **Piskel** (https://www.piskelapp.com/) - Free online pixel art editor
2. **Aseprite** - Professional pixel art tool
3. **Pixilart** - Online collaborative pixel art

### Converting to SVG:
```bash
# Use online converters or create SVG manually
# Each 1x1 pixel becomes a <rect> element
```

---

## 🌟 BONUS FEATURES

### Typing Animation Customization
Edit the typing SVG lines:
```
lines=Your+Custom+Text;Second+Line;Third+Line
```

### Badge Customization
Create custom badges at shields.io:
```
https://img.shields.io/badge/TEXT-VALUE-COLOR?style=for-the-badge
```

---

## 🐛 TROUBLESHOOTING

### Stats Not Showing?
- Ensure your repository is public
- Wait 24 hours for GitHub to index your activity
- Check if you've reached API rate limits

### Images Not Loading?
- Verify all URLs are correct
- Check if external services are online
- Use raw GitHub URLs for hosted images

### Snake Not Animating?
- Enable GitHub Actions in repository settings
- Check workflow permissions
- Verify the output branch exists

---

## 🎯 PERFORMANCE TIPS

1. **Optimize Image Loading**: Use lazy loading where possible
2. **External Services**: Some APIs may be slow; they're cached by GitHub
3. **Repository Size**: Keep asset files under 1MB each

---

## 📚 RESOURCES & CREDITS

### APIs & Services Used:
- **GitHub README Stats**: https://github.com/anuraghazra/github-readme-stats
- **Capsule Render**: https://github.com/kyechan99/capsule-render
- **Typing SVG**: https://github.com/DenverCoder1/readme-typing-svg
- **Shields.io**: https://shields.io
- **GitHub Profile Trophy**: https://github.com/ryo-ma/github-profile-trophy
- **Activity Graph**: https://github.com/Ashutosh00710/github-readme-activity-graph
- **Snake**: https://github.com/Platane/snk

### Inspiration:
- Classic RPG games (Final Fantasy, Dragon Quest)
- Pixel art aesthetics
- Fantasy realm themes

---

## 🎮 ACHIEVEMENT UNLOCKED!

Congratulations! You've completed the setup quest! 

```
╔═══════════════════════════════════════════════════════╗
║  🏆 ACHIEVEMENT UNLOCKED: LEGENDARY PROFILE MAKER 🏆  ║
║                                                       ║
║  You have successfully created an epic RPG-themed    ║
║  GitHub profile that will inspire awe in all who     ║
║  visit your realm!                                   ║
║                                                       ║
║  Reward: +1000 XP, Legendary Status 🌟               ║
╚═══════════════════════════════════════════════════════╝
```

---

## 💖 SUPPORT & COMMUNITY

Found this helpful? Here's how you can support:
- ⭐ Star the repository
- 🔄 Share with fellow developers
- 🐛 Report issues or suggest improvements
- 💬 Join the discussion

---

## 📄 LICENSE

This profile template is free to use, modify, and share!
Created with ❤️ by Teytann

---

**⚔️ "May your code be clean and your bugs be few!" ⚔️**

