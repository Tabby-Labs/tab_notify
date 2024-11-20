# FiveM Notification Script

A simple custom notification system for FiveM with fade-in and fade-out animations, customizable styles, and support for multiple types of notifications.

## Features
- Fade-in and fade-out animations
- Customizable notification types (`default`, `primary`, `success`, `error`)
- Minimalist UI

## Preview
<img src="https://media.discordapp.net/attachments/1308699849792819241/1308700060216987750/image-2.png?ex=673ee568&is=673d93e8&hm=90e7da3f24434de54c4f734bbac0f00bb091c5c1da2a7dd55b75709efd0e334f&=&format=webp&quality=lossless&width=393&height=298"></img>
<img src="https://media.discordapp.net/attachments/1308699849792819241/1308700149878489138/image-3.png?ex=673ee57e&is=673d93fe&hm=205a0b1c3497411fcc75dd83b06744cad957a53397750e42c3729e4dc09eb49e&=&format=webp&quality=lossless&width=387&height=295"></img>
<img src="https://media.discordapp.net/attachments/1308699849792819241/1308700241599533096/image-1.png?ex=673ee594&is=673d9414&hm=26a0e88e3e81789941d8db049c170d5d779a20b803fa7a0598d9812d61a036fa&=&format=webp&quality=lossless&width=392&height=302"></img>
<img src="https://media.discordapp.net/attachments/1308699849792819241/1308700733096329306/image.png?ex=673ee609&is=673d9489&hm=1345d74aabf62250bfa3f315f428efc6172ff64925697a344aaf4fab82176424&=&format=webp&quality=lossless&width=393&height=301"></img>
<video controls src="video-1.mp4" title="Title"></video>

## Usage
Trigger notifications in-game via client events:
```lua
-- TriggerEvent 
TriggerEvent('tabby.sendNotify', message, type, duration)
```
Example
```lua
RegisterCommand('notify', function()
    TriggerEvent('tabby.sendNotify', 'Test Message Text', 'default', 3500)
end)
```

## Installation
1. Clone or download this repository.
2. Add the resource folder to your FiveM server's `resources` directory.
3. Add the resource to your `server.cfg`:
