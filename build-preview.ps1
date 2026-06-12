$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path

$md = [IO.File]::ReadAllText("$root\README.md", [Text.Encoding]::UTF8)

# Stand-in data so every widget renders with real numbers in the preview
$md = $md.Replace('YOUR_USERNAME', 'DenverCoder1')
$md = $md.Replace('YOUR_NAME', 'PLAYER_1')
$md = $md.Replace('YOUR_EMAIL@gmail.com', 'preview@example.com')
$md = $md.Replace('YOUR_DISCORD_ID', '94490510688792576')
$md = $md.Replace('YOUR_REPO_1', 'readme-typing-svg')
$md = $md.Replace('YOUR_REPO_2', 'github-readme-streak-stats')
$md = $md.Replace('YOUR_PORTFOLIO_URL', 'https://example.com')

# The 3 workflow-generated images don't exist for the stand-in account on those
# branches - point at known-live demo outputs from the action authors instead
$md = $md.Replace('https://raw.githubusercontent.com/DenverCoder1/DenverCoder1/output/github-contribution-grid-snake', 'https://raw.githubusercontent.com/Platane/Platane/output/github-contribution-grid-snake')
$md = $md.Replace('https://raw.githubusercontent.com/DenverCoder1/DenverCoder1/output-pacman/pacman-contribution-graph', 'https://raw.githubusercontent.com/abozanona/abozanona/output/pacman-contribution-graph')
$md = $md.Replace('https://raw.githubusercontent.com/DenverCoder1/DenverCoder1/main/profile-3d-contrib/', 'https://raw.githubusercontent.com/yoshi389111/yoshi389111/main/profile-3d-contrib/')

# Render through GitHub's own markdown engine for exact fidelity.
# Decode the response bytes as UTF-8 manually - PS 5.1 mis-decodes Arabic otherwise.
$payload = @{ text = $md; mode = 'markdown' } | ConvertTo-Json -Depth 3
$bytes = [Text.Encoding]::UTF8.GetBytes($payload)
$resp = Invoke-WebRequest -UseBasicParsing -Method Post -Uri 'https://api.github.com/markdown' `
  -Body $bytes -ContentType 'application/json; charset=utf-8' `
  -Headers @{ 'User-Agent' = 'profile-preview-builder'; 'Accept' = 'application/vnd.github+json' }
$rendered = [Text.Encoding]::UTF8.GetString($resp.RawContentStream.ToArray())

$top = @'
<!DOCTYPE html>
<html lang="en" data-color-mode="dark" data-dark-theme="dark">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GitHub Profile Preview - The Developer Saga</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.5.1/github-markdown-dark.min.css">
<style>
  body { background: #0d1117; margin: 0; padding: 0; }
  .notice { max-width: 1012px; margin: 0 auto; padding: 12px 32px; background: #1c2128; border-bottom: 1px solid #30363d;
            color: #e6edf3; font-family: -apple-system, "Segoe UI", sans-serif; font-size: 13px; }
  .notice b { color: #ffd700; }
  .markdown-body { max-width: 1012px; margin: 0 auto; padding: 32px; }
</style>
</head>
<body>
<div class="notice"><b>PREVIEW MODE</b> &mdash; placeholders are filled with a real account (DenverCoder1) so every stats card shows live data. Your own profile will show your name and your numbers. Animations play exactly as they will on GitHub.</div>
<article class="markdown-body">
'@

$bottom = @'
</article>
</body>
</html>
'@

$out = $top + $rendered + $bottom
[IO.File]::WriteAllText("$root\preview.html", $out, (New-Object Text.UTF8Encoding($false)))
Write-Host "preview.html written: $([math]::Round((Get-Item "$root\preview.html").Length / 1KB, 1)) KB"
