# Toolbox

Updated on 2022-06-21

- [ ] Add a toc https://luciopaiva.com/markdown-toc/

## 🖥️ macOS Setup

New machine setup checklist

- [ ] Set up iCloud account.
- [ ] Install Chrome.
- [ ] Install 1Password.
- [ ] Install Google Drive, Dropbox. Sync.
- [ ] Install Alfred.
- [ ] Install Karabiner-Elements.
- [ ] Install iTerm 2. Install [Homebrew](https://brew.sh/).
- [ ] [Change computer and host name](https://apple.stackexchange.com/questions/66611/how-to-change-computer-name-so-terminal-displays-it-in-mac-os-x-mountain-lion):
  - `sudo scutil --set ComputerName "newname"`
  - `sudo scutil --set LocalHostName "newname"`
  - `sudo scutil --set HostName "newname"`
- [ ] Stop Time Machine local snapshots.
  - `tmutil disablelocal` was deprecated since Mojave. Use  [TimeMachineEditor](https://tclementdev.com/timemachineeditor/) instead.
- [ ] Create a global `gitignore` file at `~/.gitignore`.
  - `git config --global core.excludesfile ~/.gitignore`
- [ ] Install essential applications in the following list.

> A list of applications installed and/or frequently used on my device.

```plaintext
🎫: requires a license
🔁: requires a recurring subscription
🇺🇦: included in Setapp
🍎: downloaded from App Store
```

### 🛠 System Extension

- [AlDente](https://github.com/davidwernhart/AlDente). A macOS charging limit tool. 🎫🇺🇦
- [Alfred](https://www.alfredapp.com/). The Spotlight before Spotlight, the king of my macOS productivity. Powerpack purchased. 🎫
  - `Option` + `Space`: Activate Aflred search bar.
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12). The tool that keeps the machine awake for infinity. A true heir of [Caffeine](https://intelliscapesolutions.com/apps/caffeine). 🍎
  - `Hyper` + `A`: turn on/off
- [Bartender](https://www.macbartender.com/). macOS Menubar extension. 🎫🇺🇦
- [CleanMyMac X](https://macpaw.com/cleanmymac). A system cleaner. 🇺🇦
- [coconutBattery](https://coconut-flavour.com/coconutbattery/). Battery reading.
- [Karabiner Elements](https://karabiner-elements.pqrs.org/). Key mapping customizer.
  - `Hyper` == `command+control+option+shift`
  - Complex modifications: [Change `caps_lock` to `command+control+option+shift`](https://ke-complex-modifications.pqrs.org/#modifier-keys).
- [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html). Customize Logitech peripherals.
- [Rectangle](https://rectangleapp.com/). macOS window organizer.
  - `Hyper` + `1/2/3/4`: current window to the 1st/2nd/3rd/4th quadrant of the screen
  - `Hyper` + arrow keys
  - `Hyper` + `C`: center

### 📁 File Management

- [calibre](https://calibre-ebook.com/). E-book management software.
- [DaisyDisk](https://daisydiskapp.com/). Analyzing disk usage with a wind rose diagram. 🍎
- [DEVONthink 3](https://www.devontechnologies.com/apps/devonthink). Organize async files, as the counterpart of my cloud storage. 🎫
- [Dropbox](https://www.dropbox.com/home). Replaced due to the limitation of number of devices in sync.
- [Google Drive](https://www.google.com/drive/). 15GB might just be enough for now.
- [Gemini](https://macpaw.com/gemini). Duplicate finder. 🎫🇺🇦
- [iMazing 2](https://imazing.com/). iOS device management. Single device allowed. 🎫
- [iStat Menus](https://bjango.com/mac/istatmenus/). Menubar system monitor. 🇺🇦

### 🔐 Security and Encryption

- [1Password](https://1password.com/). THE password manager for the last decade. Requires yearly subscription. 🔁
  - `Hyper` + `P`: Open 1Password

### 🌏 Internet

- [Chrome](https://www.google.com/chrome/)
- ~~[Firefox](https://www.mozilla.org/en-US/firefox/new/)~~
- Safari

|                                                                                                          Plugin | Chrome | Firefox | Safari |
| --------------------------------------------------------------------------------------------------------------: | :----: | :-----: | :----: |
|                                                                             [1Password](https://1password.com/) |   ✅    |    ✅    |   ✅    |
|                                                                          [Dark Reader](https://darkreader.org/) |   ✅    |    ✅    |   ✅    |
|                                             [Enhancer for YouTube](https://www.mrfdev.com/enhancer-for-youtube) |   ✅    |    ✅    |   ❌    |
|                                     [Hypothesis](https://web.hypothes.is/help/installing-the-chrome-extension/) |   ✅    |    ❌    |   ❌    |
|                                                                   [Instapaper](https://www.instapaper.com/save) |   ✅    |    ✅    |   ✅    |
|                                                     [Downie](https://blog.charliemonroe.net/downie-and-chrome/) |   ✅    |    ✅    |   ✅    |
|                                                                                   [Keepa](https://keepa.com/#!) |   ✅    |    ❌    |   ❌    |
|                                                             [Modern for Wikipedia](https://www.modernwiki.app/) |   ✅    |    ✅    |   ❌    |
|                                                                              [OneTab](https://www.one-tab.com/) |   ✅    |    ✅    |   ❌    |
| [Pinboard Plus](https://chrome.google.com/webstore/detail/pinboard-plus/mphdppdgoagghpmmhodmfajjlloijnbd?hl=en) |   ✅    |    ❌    |   ❌    |
|                                         [Pinboard WebExtension](https://github.com/gapop/pinboard-webextension) |   ❌    |    ✅    |   ❌    |
|                                                                             [Raindrop.io](https://raindrop.io/) |   ✅    |    ❌    |   ❌    |
|                                                          [RSSHub Radar](https://github.com/DIYgod/RSSHub-Radar) |   ✅    |    ✅    |   ❌    |
|                                                                      [Session Buddy](https://sessionbuddy.com/) |   ✅    |    ❌    |   ❌    |
|                                                      [SingleFile](https://github.com/gildas-lormeau/SingleFile) |   ✅    |    ✅    |   ❌    |
|                                                                                [SteamDB](https://steamdb.info/) |   ✅    |    ✅    |   ❌    |
|                                                              [uBlock Origin](https://github.com/gorhill/uBlock) |   ✅    |    ✅    |   ❌    |
|                                        [豆伴：豆瓣账号备份工具](https://blog.doufen.org/posts/tofu-user-guide/) |   ✅    |    ❌    |   ❌    |
|                                                          [Auto Tab Discard](https://add0n.com/tab-discard.html) |   ✅    |    ✅    |   ❌    |
|                                                        [HTTPS Everywhere](https://www.eff.org/https-everywhere) |   ✅    |    ✅    |   ❌    |

### 🧰 Utilities

- [Downie](https://software.charliemonroe.net/downie/). Internet video downloader, great browser plugins. 🇺🇦
- [Folx](https://www.mac-downloader.com/). Download manager. 🇺🇦
- [Image2icon](https://img2icnsapp.com/). Convert images to icons. 🍎🇺🇦
- [Keka](https://www.keka.io/en/). File archiver.
- [Maccy](https://maccy.app/). Open-source clipboard management.
  - `Command` + `Shift` + `V`: show clipboard.
- ~~[Cheatsheet](https://www.mediaatelier.com/CheatSheet/)~~. Not compatible with M1 chip.
- [Shottr](https://shottr.cc/). Great substitute to CleanShot X.
  - `Command` + `Shift` + `3` = Shottr area screenshot
  - `Command` + `Shift` + `4` = Shottr active window screenshot
  - `Command` + `Shift` + `5` = Shottr fullscreen screenshot
- [CleanShot X](https://cleanshot.com/). Great screenshot and GIFs tool. 🇺🇦
  - `Command` + `Shift` + `3` = Capture area
  - `Command` + `Shift` + `4` = Capture window
  - `Command` + `Shift` + `5` = Capture fullscreen
  - `Command` + `Shift` + `6` = All-In-One

### 📝 Logging

- [Day One](https://dayoneapp.com/). My daily journal app. 🍎🔁
- [Drafts](https://getdrafts.com/). One-in-all text/draft app. 🍎🔁
  - `Command` + `Shift` + `1` = Drafts main window
  - `Command` + `Shift` + `2` = Drafts quick entry
- [Goodnotes 5](https://www.goodnotes.com/). 🍎
- [MarkText](https://github.com/marktext/marktext). Open-source Markdown editor.
  - ~~Substitute for [Typora](https://typora.io/)🎫~~
  - `brew install --cask mark-text`

### 👨🏻‍💻 Development

- [Anaconda](https://www.anaconda.com/). Data science resource management for Python (mainly) and R (not really.)
- [Dash](https://kapeli.com/dash). Offline access to documentations. 🎫🇺🇦
- [Expressions](https://www.apptorium.com/expressions). Nice regular expression helper. 🇺🇦
- [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/). Activated with Educational license. 🔁
  - "For the sake of the hard drive space. Don’t keep previous versions for instant rollback."
  - [WebStorm](https://www.jetbrains.com/webstorm/)
  - [DataSpell](https://www.jetbrains.com/dataspell/)
  - [PyCharm](https://www.jetbrains.com/pycharm/)
  - [DataGrip](https://www.jetbrains.com/datagrip/)
- [Fig](https://fig.io/). Auto-complete in terminal apps. Very powerful companion with iTerm 2. Plugins in-use:
  - [Oh My Zsh](https://ohmyz.sh/)
  - [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [Zsh Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - [Spaceship Prompt](https://spaceship-prompt.sh/)
  - [You Should Use](https://github.com/MichaelAquilina/zsh-you-should-use)
  - [Git Open](https://github.com/paulirish/git-open)
- [GitHub Desktop](https://desktop.github.com/). Easy-to-use Git GUI.
- [iTerm 2](https://iterm2.com/). Terminal, but better than Terminal.
- ~~[Cool Retro Term](https://github.com/Swordfish90/cool-retro-term). Open-source retro terminal emulator.~~

### 📷 Creative

- [Affinity Designer](https://affinity.serif.com/en-us/designer/). Purchased on [App Store](https://apps.apple.com/us/app/affinity-designer/id1274090551). 🍎
- [Affinity Photo](https://affinity.serif.com/en-us/photo/). Purchased from the developer. 🎫
- ~~[Capture One](https://www.captureone.com/en). Free activation code gifted with a Fujifilm camera. Not that frequently used too.~~
- [Figma](https://www.figma.com/) == Design Swiss Army knife.
- [Final Cut Pro](https://www.apple.com/final-cut-pro/). 🍎
  - [Motion](https://www.apple.com/final-cut-pro/motion/). 🍎
  - [Compressor](https://www.apple.com/final-cut-pro/compressor/). 🍎
- ~~[Inboard](https://inboardapp.com/). Image organization. Development in hiatus. 🍎~~

### 📮 Information

- [Anki](https://apps.ankiweb.net/). A open-source flashcard tool.
- [CARROT Weather](https://www.meetcarrot.com/weather/). 🍎

### 📆 Schedule

- [Due](https://www.dueapp.com/). Aggressive reminder app. 🍎🇺🇦🔁.
  - `Hyper` + `D`: create new reminder.
- [Fantastical](https://flexibits.com/fantastical). A calendar and todo list app with great NLP input. 🎫
  - `Hyper` + `F`: create new event/reminder
- [Things 3](https://culturedcode.com/things/). The best GTD from my perspective. 🍎
  `Control` + `Space`: quick entry.

### 💬 Messaging

- [Swiftcord](https://swiftcordapp.github.io/Swiftcord/). A native Discord client for macOS.
  - ~~Substitue for [Discord](https://discord.com/)~~.
- ~~[Mumble](https://www.mumble.info/). Open-source voice chat.~~

### 🎮 Entertainment

- [Amazon Kindle](https://www.amazon.com/b?ie=UTF8&node=16571048011). 🍎
- [Books]. System built-in EPUB reader.
- [IINA](https://iina.io/). Open-source media player.
- ~~[OpenEmu](https://openemu.org/). Retro game emulator.~~
- ~~[OpenRA](https://www.openra.net/). C&C, Dune, RA built for modern era.~~
- [Spotify](https://open.spotify.com/)
- [Steam](https://store.steampowered.com/)

### 🎑 Screensaver

- [Aerial](https://github.com/JohnCoates/Aerial). Apple TV Aerial Screensaver.
- [Fliqlo Flip Clock](https://fliqlo.com/). The classic.
- [Brooklyn](https://github.com/pedrommcarrasco/Brooklyn). Screensaver inspired by Apple's Event on October 30, 2018.

***

- Marked 2, 🎫[🔗](https://marked2app.com/)
- MD Clock, 🍎
- ~~MindNode, 🎫🇺🇦~~
- ~~Microsoft Teams~~
- Monitor Control, [🔗](https://github.com/MonitorControl/MonitorControl)
- Dark Noise
  - ~~Noizio, 🍎🇺🇦~~
- Notability, 🍎
- Numi, 🎫🇺🇦
- Obsidian
- PCalc, 🍎
- PDF Expert, 🎫
- PhotoBulk, 🍎
- PICO-8, [🔗](https://www.lexaloffle.com/pico-8.php)
- Pins, 🍎
- ~~Pixelmator, 🍎~~
- Pocket Casts
- PopClip, 🎫[🔗](https://pilotmoon.com/popclip/)
- ~~Postman~~
- Processing
- ~~QGIS~~
- R
- Reeder, 🍎
- Rocket. 🎫
- RStudio
- ~~RSwitch, [🔗](https://rud.is/rswitch/)~~
  - speculating
- Sip, 🇺🇦
- Slack
- Squash, 🇺🇦
- Surfshark, 🔁
- TablePlus, 🇺🇦
- Telegram
- Texpad, 🎫[🔗](https://www.texpad.com/)
- [TimeMachineEditor](https://tclementdev.com/timemachineeditor/)
- Transmit, 🎫[🔗](https://panic.com/transmit/)
- Tweetbot 3, 🍎
- Visual Studio Code

```bash
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```

- WeChat
- Yoink, 🍎
- ~~剪映, [🔗](https://lv.ulikecam.com/)~~
- Tencent Lemon 柠檬清理
- ~~Audacity~~
- ~~Buckets, [🔗](https://www.budgetwithbuckets.com/)~~
- ~~Clear, 🍎~~
- ~~f.lux~~
- ~~Encrypto, 🍎~~
- ~~GitKraken, 🔁~~
- ~~Handbrake~~
- ~~HazeOver, 🎫~~
- ~~Itsycal for Mac, [🔗](https://www.mowglii.com/itsycal/)~~
- ~~Kap, [🔗](https://github.com/wulkano/Kap)~~
- ~~KeyCastr, [🔗](https://github.com/keycastr/keycastr)~~
- ~~Lunar, [🔗](https://lunar.fyi/)~~
- ~~Mactracker, 🍎~~
    - No, it’s so outdated
- ~~Maipo, 🍎~~
- ~~MenubarX, 🍎~~
- NetNewsWire, [🔗](https://netnewswire.com/)
- ~~Notion~~
  - ~~Anytype, an alternative~~
- ~~Pixen, 🍎~~
- ~~Polarr Photo Editor Pro, 🎫~~
- ~~Skim, [🔗](https://skim-app.sourceforge.io/)~~
- ~~Streaks, 🍎~~
- ~~Transmission~~
- ~~YACReader~~

### 🔠 Font selections

- [Lexend](https://www.lexend.com/), sans serif
- [Montserrat](https://fonts.google.com/specimen/Montserrat), sans serif
- Roboto family
  - [Roboto](https://fonts.google.com/specimen/Roboto), sans serif
  - [Roboto Condensed](https://fonts.google.com/specimen/Roboto+Condensed), sans serif
  - [Roboto Flex](https://fonts.google.com/specimen/Roboto+Flex), sans serif
  - [Roboto Slab](https://fonts.google.com/specimen/Roboto+Slab), serif
  - [Roboto Serif](https://fonts.google.com/specimen/Roboto+Serif), serif
  - [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono), monospace
- [IBM 3270](https://github.com/rbanffy/3270font), monospace
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/), monospace
- [Ubuntu Monospace](https://design.ubuntu.com/font/), monospace

![Regular, 12pt](image/fonts.png)

- [Noto Mono for Powerline](https://github.com/powerline/fonts/), monospace

## 🔃 Service subscriptions

- [Pinboard](https://pinboard.in/)
- [YouTube Premium](https://www.youtube.com/premium)
- [Amazon Prime](https://www.amazon.com/amazonprime)
- [Netflix](https://www.netflix.com/)
- [The Athletic](https://theathletic.com/)
- [Netlify](https://www.netlify.com/)
- [GoDaddy](https://www.godaddy.com/)
- [Feedbin](https://feedbin.com/)
- [Spotify](https://open.spotify.com/)
- [FlowingData](https://flowingdata.com/membership/)
- [1Password Family](https://1password.com/families/)
- [Day One](https://dayoneapp.com/)
- [NOMO CAM](https://apps.apple.com/us/app/nomo-cam-point-and-shoot/id1362548649)
- [Tweetbot for iOS](https://tapbots.com/tweetbot/)
- [Nintendo Switch Online](https://www.nintendo.com/switch/online-service/)
- [F1 TV Pro](https://f1tv.formula1.com/)
- [Setapp](https://setapp.com/)
