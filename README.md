# rexarski's toolbox (a no so minimal setup guide)

## Todos

- Set up iCloud account.
- Install **[1Password](https://1password.com/)**. THE password manager for the last decade. Requires yearly subscription. `Cmd` + `Option` + `P`: Open 1Password 🔁
- Install [Maestral](https://maestral.app/). Open source Dropbox client, simpler, smaller, less memory needed. `brew install --cask maestral` 🍺
- Install **[iTerm 2](https://iterm2.com/)**. Terminal, but better than Terminal.
  - Snazzy theme: `(curl -Ls https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors > /tmp/Snazzy.itermcolors && open /tmp/Snazzy.itermcolors)`
  - [fish](https://fishshell.com/). The friendly interactive shell.
    - Follow this [gist](https://gist.github.com/gagarine/cf3f65f9be6aa0e105b184376f765262) to set `fish` as default
- Install **[Homebrew](https://brew.sh/)**. THE package manager for macOS. `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - `asciinema`
  - `bat` <- `cat`
  - `btop` <- `htop` and `top`
  - **`emacs`**
  - `exiftool`
  - `eza` <- `ls` and `exa`
  - `fx`
  - `fzf`
  - `jq`
  - `neofetch`
  - `neovim` <- `vim`
  - `procs` <- `ps`
  - `scc`
  - `superfile`
  - `tldr`
  - `tre` (`brew install tre-command`) <- `tree`
  - `tmux`
  - **`uv`**
  - `vizdata`
  - `you-get`

- [Change computer and host name](https://apple.stackexchange.com/questions/66611/how-to-change-computer-name-so-terminal-displays-it-in-mac-os-x-mountain-lion):
  - `sudo scutil --set ComputerName "newname"`
  - `sudo scutil --set LocalHostName "newname"`
  - `sudo scutil --set HostName "newname"`
- Stop Time Machine local snapshots. `tmutil disablelocal` was deprecated since Mojave. Use  [TimeMachineEditor](https://tclementdev.com/timemachineeditor/) instead.
- Create a global `gitignore` file at `~/.gitignore`. See [this one](/config/.gitignore) as an example: `git config --global core.excludesfile ~/.gitignore`
- Generate and add SSH key to GitHub account.
- Turn off the Spotlight.
- Turn off the auto boot feature (if this is a MacBook.) `sudo nvram AutoBoot=%00`. Turn it back on by `sudo nvram AutoBoot=%03` or use `nvram -p` to check the current value.
- Generate and add SSH key to GitHub account.
- In Safari, go to Preferences - Advanced, turn on "Show Develop menu in menu bar".

## Application list

### A

- [Affinity Designer 2](https://affinity.serif.com/en-us/designer/). 🎫
- [Affinity Photo 2](https://affinity.serif.com/en-us/photo/). 🎫
- [Affinity Publisher 2](https://affinity.serif.com/en-us/publisher/). 🎫
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12). Keep the machine awake. `Cmd` + `Shift` + `A`: turn on/off 
- [Applite](https://github.com/milanvarady/Applite), user-friendly GUI macOS application for Homebrew Casks. `brew install --cask applite` 🍺
- [Aseprite](https://www.aseprite.org/). A animated pixel art editor. Purchased on [Steam](https://store.steampowered.com/app/431730/Aseprite/). 🎫

### B

- [Beekeeper Studio Community Edition](https://github.com/beekeeper-studio/beekeeper-studio)
- [BetterDisplay](https://github.com/waydabber/BetterDisplay#readme). Display customization tool. From the same developer of [Monitor Control](https://github.com/MonitorControl/MonitorControl). 🎫
- [BetterTouchTool](https://folivora.ai), input (not only trackpad!) customization. 🎫
- [bun](https://bun.sh/) `curl -fsSL https://bun.sh/install | bash`

### C

- [calibre](https://calibre-ebook.com/). E-book management. `brew install --cask calibre` 🍺
  - [calibre-douban](https://github.com/fugary/calibre-douban). 豆瓣插件.
  - [Fix Kindle Ebook Cover](https://github.com/bookfere/Fix-Kindle-Ebook-Cover). A tool to fix damaged cover for Kindle.

### D

- [DaisyDisk](https://daisydiskapp.com/). Disk usage in a wind rose diagram. 
- **[Day One](https://dayoneapp.com/)** 🔁
- [DEVONthink 3](https://www.devontechnologies.com/apps/devonthink) 🎫
- [Discord](https://discord.com/). `brew install --cask discord` 🍺
- [Downie](https://software.charliemonroe.net/downie/) 🎫
- **[Drafts](https://getdrafts.com/)**. For drafting. 🔁
  - `Cmd` + `Shift` + `1` = Drafts main window
  - `Cmd` + `Shift` + `2` = Drafts quick entry
- **[Due](https://www.dueapp.com/)**. Aggressive reminder. 🔁.

### E

- [Eagle](https://eagle.cool/). Organize images. 🎫

### F

- **[Fantastical](https://flexibits.com/fantastical)** `Hyper +`F`: create new event/reminder 🎫
- [Final Cut Pro](https://www.apple.com/final-cut-pro/). 
  - [Motion](https://www.apple.com/final-cut-pro/motion/). 
  - [Compressor](https://www.apple.com/final-cut-pro/compressor/). 
- [Flighty](https://apps.apple.com/us/app/flighty-live-flight-tracker/id1358823008). 
- [Fujifilm X RAW Studio](https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/).

### G

- [Gemini](https://macpaw.com/gemini). Duplicate finder. 🎫
- [GitHub Desktop](https://desktop.github.com/). Easy-to-use Git GUI.
- [GoodLinks](https://apps.apple.com/us/app/goodlinks/id1474335294). 

### H

- [Handbrake](https://handbrake.fr). Open source video transcoder. `brew install —cask handbrake` 🍺
  - iPod 5.5 gen - 7 gen compatible video preset: [github](https://github.com/HandBrake/HandBrake/issues/4040), [reddit discussion](https://www.reddit.com/r/ipod/comments/jccdm1/guide_to_ipod_classic_and_nano_video_formats/)
- [Hush](https://github.com/oblador/hush). Content blocker for Safari. 

### I

- [Ice](https://github.com/jordanbaird/Ice). Bartender alternative. `brew install --cask jordanbaird-ice` 🍺
- [IINA](https://iina.io/). Media player. `brew install --cask iina` 🍺
- [Ivory for Mastodon](https://tapbots.com/ivory/mac/). 🔁

### K

- [Karabiner Elements](https://karabiner-elements.pqrs.org/). Key mapping customizer.
  - `Hyper` == `Cmd + Ctrl + Option + Shift`
  - `Shift` + `Backspace`: Forward delete
  - Complex modifications: [Change `caps_lock` to `Cmd + Ctrl + Option + Shift`](https://ke-complex-modifications.pqrs.org/#modifier-keys).
- [`kcc`](https://github.com/ciromattia/kcc), Kindle Comic Converter.
- [Keepa](https://keepa.com/#). Amazon price tracker. 
- [Keka](https://www.keka.io/en/) `brew install --cask keka` 🍺
- [KeyClu](https://sergii.tatarenkov.name/keyclu/support/). Cheatsheet alternative
  - Double press cmd and hold to activate the cheatsheet.
  - Double press cmd and quick release to activate Siri.
  - `brew install —cask keyclu` 🍺

### L

- [Latest](https://github.com/mangerlahn/Latest). Checks applications' latest update on macOS.
 `brew install --cask latest` 🍺
- [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html). Customize Logitech peripherals.
- [Loop](https://github.com/MrKai77/Loop). Alternative to Moom.
  - Left `Ctrl` to activate a selector ring.
  - `brew install --cask loop` 🍺

### M

- [Maccy](https://maccy.app/). Clipboard. `brew install --cask maccy` 🍺
- [**mac-cleanup-py**](https://github.com/mac-cleanup/mac-cleanup-py) clean up script for macos. `brew tap mac-cleanup/mac-cleanup-py; brew install mac-cleanup-py` 🍺
- [Marked 2](https://marked2app.com/) 🎫
- [MultiViewer for F1](https://beta.f1mv.com/)
- [Musicbrainz Picard](https://picard.musicbrainz.org/)
- [MusicBox](https://apps.apple.com/us/app/musicbox-save-music-for-later/id1614730313). Bookmark music. 
- [MusicHarbor](https://apps.apple.com/cn/app/musicharbor-new-music-tracker/id1440405750). 

### N

- [NetNewsWire](https://ranchero.com/netnewswire/). For RSS. `brew instlal --cask netnewswire` 🍺
- [Nicotine+](https://nicotine-plus.org), a graphical client for Soulseek.
- [Numi](https://numi.app/). NLP + calculator. `brew install --cask numi` 🍺

### O

- **[Obsidian](https://obsidian.md/)**. Second brain/digital garden/Zettelkasten. Go subscribe to [Obsidian Sync](https://obsidian.md/sync) to support the development!
- [Obsidian Web Clipper](https://stephango.com/obsidian-web-clipper). 
- [Ollama](https://github.com/jmorganca/ollama). LocalLLM.
- [OrbStack](https://orbstack.dev/). A light-weight Docker and Linux runtime management. `brew install --cask orbstack` 🍺

### P

- [Parcel](https://apps.apple.com/us/app/parcel-delivery-tracking/id639968404?mt=12). Track your packages. 
- [PCalc](https://pcalc.com/) 
- [PDF Expert](https://pdfexpert.com/) 🎫
- [Permute 3](https://software.charliemonroe.net/permute/) 🎫
- [PhotoBulk](https://photobulkeditor.com/). Quick photo editor. 
- [PICO-8](https://www.lexaloffle.com/pico-8.php). Fantasy retro console game engine. 🎫
- [Picotron](https://www.lexaloffle.com/picotron.php). A fantasy workstation. 🎫
- [Play](https://apps.apple.com/cn/app/play-save-videos-watch-later/id1596506190). Watch it later(s). 
- [Plex](https://www.plex.tv/). `brew install --cask plex` 🍺

### Q

- [QLMarkdown](https://github.com/sbarex/QLMarkdown). macOS Quick Look extension for markdown files. `brew install --cask qlmarkdown` 🍺
- [Quarto](https://quarto.org/). An open source scientific and technical publishing system built on Pandoc. `brew install --cask quarto` 🍺

### R

- [R](https://www.r-project.org/).
- [RStudio](https://www.rstudio.com/). IDE for R.
- [Raycast](https://www.raycast.com/). Extendable launcher substitute to Spotlight, with an extension store. `Cmd` + `Space`: Activate Raycast. (Disable this shortcut for Spotlight) `brew install --cask raycast` 🍺
- [Reminders Menubar](https://github.com/DamascenoRafael/reminders-menubar) `brew install --cask reminders-menubar` 🍺]
- [Rocket](https://matthewpalmer.net/rocket/). Emoji launcher with one-key shortcut. Use `:` to trigger the app. 🎫
- [RSSHub Radar](https://apps.apple.com/us/app/rsshub-radar/id1610744717). Discover RSS feeds from current website. 

### S

- [Sequel](https://www.getsequel.app/). Keep track of the movies, shows, games, books and audiobooks. 
- [Shottr](https://shottr.cc/). Great substitute to CleanShot X. 🎫
  - `Cmd` + `Shift` + `3` = Shottr area screenshot
  - `Cmd` + `Shift` + `4` = Shottr active window screenshot
  - `Cmd` + `Shift` + `5` = Shottr fullscreen screenshot
- [Sink it for Reddit](https://apps.apple.com/us/app/sink-it-for-reddit/id6449873635). 
- [skim](https://skim-app.sourceforge.io/). PDF viewer. `brew install --cask skim` 🍺
- [Sleeve 2](https://replay.software/sleeve). 🎫
- [Steam](https://store.steampowered.com/)

### T

- [Take a break](https://apps.apple.com/us/app/take-a-break-timer-reminder/id1457158844?mt=12). 
- [Telegram](https://telegram.org/). `brew install --cask telegram` 🍺
- **[Things 3](https://culturedcode.com/things/)**. The best GTD. 
  - `Ctrl` + `Space`: quick entry.
  - `Hyper` + `T`: quick entry with autofill. This requires [Things Helper](https://culturedcode.com/things/help/things-sandboxing-helper-things3/).
- [TimeMachineEditor](https://tclementdev.com/timemachineeditor/). Manually control Time Machine backup schedule. `brew install --cask timemachineeditor` 🍺
- [Transmission](https://transmissionbt.com) `brew install --cask transmission` 🍺

### U

- [upic](https://github.com/gee1k/uPic). Image (and small file) upload tool for macOS. `brew install bigwig-club/brew/upic --cask` 🍺

### V

- [Visual Studio Code](https://code.visualstudio.com/). `brew install --cask visual-studio-code` 🍺

### W

- [微信 WeChat](https://www.wechat.com/). `brew install --cask wechat` 🍺

### X

- [Xcode](https://developer.apple.com/xcode/). 
- [xld](https://tmkk.undo.jp/xld/index_e.html). Lossless audio decoder for macOS.

### Y

- [YACReader](https://www.yacreader.com/) `brew install --cask yacreader`. 🍺

### Z

- **[Zed](https://zed.dev/)**. Might be better than VSC. `brew install --cask zed` 🍺
- [Zen Browser](https://zen-browser.app). Might be better than Firefox. Plugins associated with Firefox should be synced.

## Font selections

- [Lexend](https://www.lexend.com/), sans-serif
- Roboto family
  - [Roboto](https://fonts.google.com/specimen/Roboto), sans-serif
  - [Roboto Condensed](https://fonts.google.com/specimen/Roboto+Condensed), sans-serif
  - [Roboto Serif](https://fonts.google.com/specimen/Roboto+Serif), serif
  - [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono), monospace
- [IBM 3270](https://github.com/rbanffy/3270font), monospace
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/), monospace
- [Ubuntu Monospace](https://design.ubuntu.com/font/), monospace
- [Noto Mono for Powerline](https://github.com/powerline/fonts/), monospace
- Amazon Ember and Bookerly from [Amazon Complete Font Set](https://developer.amazon.com/en-US/alexa/branding/echo-guidelines/identity-guidelines/typography), sans serif, serif
- [LXGW WenKai / 霞鹜文楷](https://github.com/lxgw/LxgwWenKai), serif
- [LXGW Neo XiHei / 霞鹜新晰黑](https://github.com/lxgw/LxgwNeoXiHei), sans-serif
- [喜鹊宋体](https://xiquezaozi.taobao.com/), serif
- [Atkinson Hyperlegible](https://brailleinstitute.org/freefont), sans-serif
- [Charis SIL](https://software.sil.org/charis/), serif
