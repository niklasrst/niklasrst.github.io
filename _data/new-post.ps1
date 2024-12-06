$postId = (Read-Host -Prompt "Enter post number")
$currentDate = Get-Date -Format "yyyy-MM-dd"
$newFileName = "$currentDate-post-$postId.md"

$content = @"
---
title: ''
date: $currentDate 00:00:00
featured_image: '/images/$postId/thumb.png'
excerpt: 
---

# 

![](/images/$postId/1.png)
"@

New-Item -Path "..\images\" -Name $postId -ItemType Directory
New-Item -Path "..\_posts\$newFileName" -ItemType File
Set-Content -Path "..\_posts\$newFileName" -Value $content
code "..\_posts\$newFileName"
