# rexarski's Toolbox

- [rexarski's Toolbox](#rexarskis-toolbox)
  - [🖥️ macOS Setup](#️-macos-setup)
    - [Setapp](#setapp)
    - [🛠 System Extension](#-system-extension)
    - [📁 File Management](#-file-management)
    - [🔐 Security and Encryption](#-security-and-encryption)
    - [🌏 Internet](#-internet)
    - [🧰 Utilities](#-utilities)
    - [📝 Logging](#-logging)
    - [👨🏻‍💻 Development](#-development)
      - [⌘ CLI tools](#-cli-tools)
    - [📷 Creative](#-creative)
    - [📮 Information](#-information)
    - [📆 Schedule](#-schedule)
    - [💬 Messaging](#-messaging)
    - [🎮 Entertainment](#-entertainment)
    - [🎑 Screensaver](#-screensaver)
    - [🔠 Font selections](#-font-selections)

## 🖥️ macOS Setup

New machine setup checklist

- [ ] Set up iCloud account.
- [ ] Install 1Password.
- [ ] Install ~~Google Drive, Dropbox,~~ Maestral. Sync.
- [ ] Install Karabiner-Elements.
- [ ] Install iTerm 2. Install [Homebrew](https://brew.sh/).
- [ ] [Change computer and host name](https://apple.stackexchange.com/questions/66611/how-to-change-computer-name-so-terminal-displays-it-in-mac-os-x-mountain-lion):
  - `sudo scutil --set ComputerName "newname"`
  - `sudo scutil --set LocalHostName "newname"`
  - `sudo scutil --set HostName "newname"`
- [ ] Stop Time Machine local snapshots.
  - `tmutil disablelocal` was deprecated since Mojave. Use  [TimeMachineEditor](https://tclementdev.com/timemachineeditor/) instead.
- [ ] Create a global `gitignore` file at `~/.gitignore`.
  - See [this one](/config/.gitignore) as an example.
  - `git config --global core.excludesfile ~/.gitignore`
- [ ] Generate and add SSH key to GitHub account.
- [ ] Turn off the iCloud sync of Photos before library migration.
- [ ] Turn off the Spotlight.
- [ ] Turn on the Night Shift in System Preferences - Display, set the schedule to Custom (6 pm to 6 am).
- [ ] Turn off the auto boot feature.
  - `sudo nvram AutoBoot=%00`
  - Turn it back on by `sudo nvram AutoBoot=%03` or use `nvram -p` to check the current value.
- [ ] Generate and add SSH key to GitHub account.
  - As GitHub stopped supporting users from using account passwords for authenticated Git operations. We need to do the following set up:
    - Generate an SSH key on the new device as no SSH keys exist inside `.ssh`
      - `ssh-keygen -t ed25519 -C “email@example.com”`
      - Enter the path with filename `/Users/myname/.ssh/id_ed25519_github` after the prompt
      - Enter a passphrase (optional), then `id_ed25519_github` and `id_ed25519_github.pub` will appear
    - Add the SSH key to ssh-agent
      - Start the ssh-agent by `exec ssh-agent zsh`
      - Add newly created SSH private key to the ssh-agent by `ssh-add —apple-use-keychain ~/.ssh/id_ed25519_github`
      - Create a config file `touch ~/.ssh/config` with:

      - ```plaintext
        Host *
          AddKeysToAgent yes
          UseKeychain yes
          IdentityFile ~/.ssh/id_ed25519_github
        ```

    - Add the SSH key to GitHub account
      - `pbcopy < ~/.ssh/id_ed25519_github.pub`
      - On GitHub, Settings -> SSH and GPG keys -> New SSH key
    - Additionally, inside `.git/config`, use SSH url instead of HTTPS url.
- [ ] Install essential applications in the following list.

```plaintext
A list of applications installed and/or frequently used on my device.

🎫: requires a license
🔁: requires a recurring subscription
: downloaded from App Store
```

### Setapp

- [CleanMyMac X](https://macpaw.com/cleanmymac). A system cleaner.

### 🛠 System Extension

- [AlDente](https://github.com/davidwernhart/AlDente). A macOS charging limit tool. 🎫
- [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704?mt=12). The tool that keeps the machine awake for infinity. A true heir of [Caffeine](https://intelliscapesolutions.com/apps/caffeine). 
  - `Cmd` + `Shift` + `A`: turn on/off
- [Bartender](https://www.macbartender.com/). macOS Menubar extension. 🎫
- [BetterDisplay](https://github.com/waydabber/BetterDisplay#readme). Display customization tool. From the same developer of [Monitor Control](https://github.com/MonitorControl/MonitorControl). 🎫
- [Karabiner Elements](https://karabiner-elements.pqrs.org/). Key mapping customizer.
  - `Hyper` == `Cmd + Ctrl + Option + Shift`
  - `Shift` + `Backspace`: Forward delete
  - Complex modifications: [Change `caps_lock` to `Cmd + Ctrl + Option + Shift`](https://ke-complex-modifications.pqrs.org/#modifier-keys).
- [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html). Customize Logitech peripherals.
- [Moom](https://manytricks.com/moom/). macOS window organizer, with more in-depth customizations than Rectangle. 🎫
  - `Cmd` + `Option` + `M`: toggle Moom keyboard control.
- [Raycast](https://www.raycast.com/). Extendable launcher substitute to Spotlight, with an extension store.
  - `Option` + `Space`: Activate Raycast.
- [Rocket](https://matthewpalmer.net/rocket/). Emoji launcher with one-key shortcut. 🎫
  - Use `:` to trigger the app.
- ~~[KeyCastr](https://github.com/keycastr/keycastr). Open source keystroke visualizer.~~
  - ~~`Hyper` + `K`: Toggle capturing~~
- ~~[Alfred](https://www.alfredapp.com/). The Spotlight before Spotlight, the king of my macOS productivity. Powerpack purchased. 🎫~~
  - ~~`Option` + `Space`: Activate Aflred search bar.~~
- ~~[coconutBattery](https://coconut-flavour.com/coconutbattery/). Battery reading.~~
- ~~[f.lux](https://justgetflux.com/). Control the on-screen color temperature.~~
- ~~[HazeOver](https://hazeover.com/). Dim the windows out of focus and the background to create a distraction-free workspace. 🎫~~
- ~~[Kap](https://getkap.co/). Open source screen recorder.~~
- ~~[PopClip](https://pilotmoon.com/popclip/). Mouse selection extension. ~~
  - ~~More [extensions](https://pilotmoon.com/popclip/extensions/)~~
- ~~[Rectangle](https://rectangleapp.com/). macOS window organizer.~~
  - ~~`Hyper` + `1/2/3/4`: current window to the 1st/2nd/3rd/4th quadrant of the screen~~
  - ~~`Hyper` + arrow keys~~
  - ~~`Hyper` + `C`: center~~
  - ~~`Ctrl` + `Option` + `D`: First third (depends on the orientation of the monitor, could be horizontal or vertical)~~
  - ~~`Ctrl` + `Option` + `F`: Second third~~
  - ~~`Ctrl` + `Option` + `G`: Last third~~
  - ~~`Ctrl` + `Option` + `E`: First two thirds~~
  - ~~`Ctrl` + `Option` + `T`: Last two thirds~~

### 📁 File Management

- [Android File Transfer](https://www.android.com/filetransfer/)
- [calibre](https://calibre-ebook.com/). E-book management software.
  - [Fix Kindle Ebook Cover](https://github.com/bookfere/Fix-Kindle-Ebook-Cover). A tool to fix damaged cover for Kindle.
- [DaisyDisk](https://daisydiskapp.com/). Analyzing disk usage with a wind rose diagram. 
- [DEVONthink 3](https://www.devontechnologies.com/apps/devonthink). Organize async files, as the counterpart of my cloud storage. 🎫
- [Maestral](https://maestral.app/). Open source Dropbox client, simpler, smaller, less memory needed.
- [Gemini](https://macpaw.com/gemini). Duplicate finder. 🎫
- [iMazing 2](https://imazing.com/). iOS device management. Single device allowed. 🎫
- [TimeMachineEditor](https://tclementdev.com/timemachineeditor/). Manually control Time Machine backup schedule.
  - `brew install --cask timemachineeditor`
- [Transmit](https://panic.com/transmit/). File transfer between macOS and servers. 🎫

### 🔐 Security and Encryption

- [1Password](https://1password.com/). THE password manager for the last decade. Requires yearly subscription. 🔁
  - `Cmd` + `Option` + `P`: Open 1Password

### 🌏 Internet

- [1Blocker](https://1blocker.com/). Content blocker on Safari. 
- [Firefox](https://www.mozilla.org/en-US/firefox/new/).
  - Follow [this blog post](https://taoshu.in/firefox/vertical-tabs.html) to remove tab bar for a more focused, vertical-tabbed experience.
- Safari
  - In Safari, go to Preferences - Advanced, turn on "Show Develop menu in menu bar".
- [Hush](https://github.com/oblador/hush). Content blocker for Safari. 
- [Keepa](https://keepa.com/#). Amazon price tracker. 

### 🧰 Utilities

- [Dark Noise](https://darknoise.app/). White noise app. 
- [Keka](https://www.keka.io/en/). File archiver.
- [Maccy](https://maccy.app/). Open source clipboard management.
- [Numi](https://numi.app/). Calculator with freedom. 🎫
- [OpenCat](https://apps.apple.com/us/app/opencat/id6445999201). Native GPT interactions. 
- [PCalc](https://pcalc.com/). Calculator app on macOS. 
- [QLMarkdown](https://github.com/sbarex/QLMarkdown). macOS Quick Look extension for markdown files.
  - `brew install --cask qlmarkdown`
- [RIME | 中州韵输入法](https://rime.im/). "Rime Input Method Engine, rimes with your keystrokes."
  - [东风破](https://github.com/rime/plum)
  - [雾凇拼音](https://github.com/iDvel/rime-ice): `bash rime-install iDvel/rime-ice:others/recipes/full`
- [Shottr](https://shottr.cc/). Great substitute to CleanShot X.
  - `Cmd` + `Shift` + `3` = Shottr area screenshot
  - `Cmd` + `Shift` + `4` = Shottr active window screenshot
  - `Cmd` + `Shift` + `5` = Shottr fullscreen screenshot
- ~~[MD Clock](https://www.miidii.tech/). Clock app. ~~
- ~~[Cheatsheet](https://www.mediaatelier.com/CheatSheet/)~~.
- ~~[Transmission](https://transmissionbt.com/). A BitTorrent client.~~

### 📝 Logging

- [Buckets](https://www.budgetwithbuckets.com/). Private family budgeting app.
- [Day One](https://dayoneapp.com/). My daily journal app. 🔁
- [Drafts](https://getdrafts.com/). One-in-all text/draft app. 🔁
  - `Cmd` + `Shift` + `1` = Drafts main window
  - `Cmd` + `Shift` + `2` = Drafts quick entry
- [Marked 2](https://marked2app.com/). Markdown preview built from a while ago. It's not that useful any more. 🎫
- [Obsidian](https://obsidian.md/). Second brain/digital garden/Zettelkasten. Use Dropbox to sync settings and vaults.
- [texifier](https://www.texifier.com/). LaTeX editor. 🎫
- [Tripsy](https://tripsy.app/). Travel planning app. 🔁
- ~~[MarkText](https://github.com/marktext/marktext). Open source Markdown editor.~~
  - ~~Substitute for [Typora](https://typora.io/)🎫~~
  - ~~`brew install --cask mark-text`~~
- ~~[Mactracker](https://mactracker.ca/). Information of all Apple devices. I switched to writing down everything on a Note. ~~

### 👨🏻‍💻 Development

- [Anaconda](https://www.anaconda.com/). Data science resource management for Python (mainly) and R (not really.)
  - I also use [poetry](https://python-poetry.org) for python package management.
  - `conda config —set auto_activate_base false`. [Do not activate `conda` by default](https://stackoverflow.com/questions/54429210/how-do-i-prevent-conda-from-activating-the-base-environment-by-default).
- [bun](https://bun.sh/). A modern JS runtime.
  - `curl -fsSL https://bun.sh/install | bash`
- [GitHub Desktop](https://desktop.github.com/). Easy-to-use Git GUI.
- [Homebrew](https://brew.sh/). THE package manager for macOS.
  - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [iTerm 2](https://iterm2.com/). Terminal, but better than Terminal.
  - Snazzy theme: `(curl -Ls https://raw.githubusercontent.com/sindresorhus/iterm2-snazzy/main/Snazzy.itermcolors > /tmp/Snazzy.itermcolors && open /tmp/Snazzy.itermcolors)`
  - [starship](https://github.com/starship/starship). A minimal, customizable prompt for shells.
- [OrbStack](https://orbstack.dev/), a light-weight Docker and Linux runtime management.
- [Ollama](https://github.com/jmorganca/ollama), a tool for running LLM locally.
- [Vim](https://www.vim.org/). The editor.
- [Visual Studio Code](https://code.visualstudio.com/). Code editor.
  - Use the following script to create a `code` command in terminal:

```bash
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```

- [Processing](https://processing.org/). Generative art playground.
- [julia](https://julialang.org/)
  - `brew install --cask julia`
- [R](https://www.r-project.org/). THE statistical programming language.
- [RStudio](https://www.rstudio.com/). Open source IDE for R language.
  - Custom theme Cobalt2 from [TmTheme Editor](https://tmtheme-editor.herokuapp.com/#!/editor/theme/Cobalt2), available in [config/cobalt2.tmTheme](config/cobalt2.tmTheme).
- [Quarto](https://quarto.org/). An open source scientific and technical publishing system built on Pandoc.
  - `brew install --cask quarto`
- [MacTeX](https://www.tug.org/mactex/). LaTeX distribution for macOS.
  - `brew install --cask mactex`
  - Follow this [blog](https://mathjiajia.github.io/vscode-and-latex/#step-3-install--configure-latex-workshop) to set up.
  - Restart the machine to resolve the path issue.
- [Xcode](https://developer.apple.com/xcode/). 

#### ⌘ CLI tools

I'm not a huge command-line user but I do have some tools I'm relatively familiar with.

The installation could be error-prone as the name of the package sometimes deviates from formula name on Homebrew.

| Package                                              | Formula       | Command     | Description                                               |
| ---------------------------------------------------- | ------------- | ----------- | --------------------------------------------------------- |
| [`asciinema`](https://asciinema.org/)                | `asciinema`   | `asciinema` | Record and share terminal sessions.                       |
| [`bat`](https://github.com/sharkdp/bat)              | `bat`         | `bat`       | A `cat` clone with wings.                                 |
| [`exa`](https://github.com/ogham/exa)                | `exa`         | `exa`       | A modern replacement for `ls`.                            |
| [`exiftool`](https://github.com/exiftool/exiftool)   | `exiftool`    | `exiftool`  | Read/write meta information of files.                     |
| [`fzf`](https://github.com/junegunn/fzf)             | `fzf`         | `fzf`       | A command-line fuzzy finder.                              |
| [`neofetch`](https://github.com/dylanaraps/neofetch) | `neofetch`    | `neofetch`  | A command-line system information tool.                   |
| [`neovim`](https://github.com/neovim/neovim)         | `neovim`      | `nvim`      | Vim-fork focused on extensibility and agility.            |
| [`procs`](https://github.com/dalance/procs)          | `procs`       | `procs`     | A modern replacement for `ps`.                            |
| [`rip`](https://github.com/nivekuil/rip)             | `rm-improved` | `rip`       | A command-line tool for ripping audio CDs.                |
| [`scc`](https://github.com/boyter/scc)               | `scc`         | `scc`       | Count lines of code quickly.                              |
| [`tldr`](https://github.com/tldr-pages/tldr)         | `tldr`        | `tldr`      | Simplified and community-driven man pages.                |
| [`tre`](https://github.com/dduan/tre)                | `tre-command` | `tre`       | A recursive directory listing command better than `tree`. |
| [`tmux`](https://github.com/tmux/tmux)               | `tmux`        | `tmux`      | Terminal multiplexer.                                     |
| [`vim`](https://github.com/vim/vim)                  | `vim`         | `vim`       |                                                           |
| [`btop`](https://github.com/aristocratos/btop)       | `btop`        | `btop`      | A monitor of resources                                    |
| [`fx`](https://github.com/antonmedv/fx)              | `fx`          | `fx`        | A command-line JSON processing tool.                      |

Or directly call the following command:

```bash
brew install asciinema scc exa tldr bat exiftool fzf procs rm-improved tre-command neofetch vim neovim tmux btop fx
```

### 📷 Creative

- [Affinity Designer 2](https://affinity.serif.com/en-us/designer/). 🎫
- [Affinity Photo 2](https://affinity.serif.com/en-us/photo/). 🎫
- [Affinity Publisher 2](https://affinity.serif.com/en-us/publisher/). 🎫
- [Darkroom](https://darkroom.co/). Very powerful and user-friendly photo + video editor in Apple's ecosystem. 🎫
- [Downie](https://software.charliemonroe.net/downie/). Internet video downloader, great browser plugins. 🎫
- [Final Cut Pro](https://www.apple.com/final-cut-pro/). 
  - [Motion](https://www.apple.com/final-cut-pro/motion/). 
  - [Compressor](https://www.apple.com/final-cut-pro/compressor/). 
- [Fujifilm X RAW Studio](https://fujifilm-x.com/en-us/support/download/software/x-raw-studio/).
- [Eagle](https://eagle.cool/). Reference images organization. 🎫
- [Aseprite](https://www.aseprite.org/). A animated pixel art editor. Purchased on [Steam](https://store.steampowered.com/app/431730/Aseprite/). 🎫
- [PhotoBulk](https://photobulkeditor.com/). Quick photo editor. 
- [PICO-8](https://www.lexaloffle.com/pico-8.php). Fantasy retro console game engine. 🎫

### 📮 Information

- [Anki](https://apps.ankiweb.net/). A Open source flashcard tool.
- [CARROT Weather](https://www.meetcarrot.com/weather/). 
- [Flighty](https://apps.apple.com/us/app/flighty-live-flight-tracker/id1358823008). 
- [Ivory for Mastodon](https://tapbots.com/ivory/mac/). 
- [PDF Expert](https://pdfexpert.com/). PDF editor and reader. 🎫
- [Pins](https://get-pins.app/). Modern Pinboard app on macOS. 
- [Pocket Casts](https://pocketcasts.com/). Third-party podcast client. 🎫
- [Reeder](https://reederapp.com/). RSS reader. 
  - `C`: Copy link
  - `F`: Open in Firefox
- [小宇宙](https://www.xiaoyuzhoufm.com/). 用来收听中文独占播客的客户端。
- ~~[Tweetbot](https://tapbots.com/tweetbot/mac/). Third-part Twitter client after all those years, still standing. ~~

### 📆 Schedule

- [Due](https://www.dueapp.com/). Aggressive reminder app. 🔁.
- [Fantastical](https://flexibits.com/fantastical). A calendar and todo list app with great NLP input support. 🎫
  - `Cmd` + `Option` + `F`: create new event/reminder
- [Things 3](https://culturedcode.com/things/). The best GTD from my perspective. 
  `Ctrl` + `Space`: quick entry.
- ~~[Clear](https://apps.apple.com/us/app/clear-todos/id493136154). One of the GTD apps with the best interactions. ~~
- ~~[Itsycal for Mac](https://www.mowglii.com/itsycal/). A menubar calendar.~~

### 💬 Messaging

- [Discord](https://discord.com/).
- [Slack](https://slack.com/). Workspace communication.
- [Telegram](https://telegram.org/). IM.
- [微信 WeChat](https://www.wechat.com/). Hate it but have to.
- [Zoom](https://zoom.us/). For conference meeting, of course.

### 🎮 Entertainment

- Books. System built-in EPUB reader.
- [IINA](https://iina.io/). Open source media player.
- [MultiViewer for F1](https://beta.f1mv.com/)
- [MusicHarbor](https://apps.apple.com/cn/app/musicharbor-new-music-tracker/id1440405750). 
- [MusicBox](https://apps.apple.com/us/app/musicbox-save-music-for-later/id1614730313). Bookmark for songs to listen later. 
- [Play](https://apps.apple.com/cn/app/play-save-videos-watch-later/id1596506190). Watch later queue management. 
- [Spotify](https://open.spotify.com/)
- [Steam](https://store.steampowered.com/)
- [YACReader](https://www.yacreader.com/). A cross-platform comic reader.

### 🎑 Screensaver

- [Brooklyn](https://github.com/pedrommcarrasco/Brooklyn). Screensaver inspired by Apple's Event on October 30, 2018.
- [Fliqlo Flip Clock](https://fliqlo.com/). The classic.
- [fruit](https://github.com/Corkscrews/fruit). Retro Apple.

### 🔠 Font selections

- [Readex Pro (~~Lexend~~)](https://www.lexend.com/), sans-serif
- [Montserrat](https://fonts.google.com/specimen/Montserrat), sans-serif
- Roboto family
  - [Roboto](https://fonts.google.com/specimen/Roboto), sans-serif
  - [Roboto Condensed](https://fonts.google.com/specimen/Roboto+Condensed), sans-serif
  - [Roboto Flex](https://fonts.google.com/specimen/Roboto+Flex), sans-serif
  - [Roboto Slab](https://fonts.google.com/specimen/Roboto+Slab), serif
  - [Roboto Serif](https://fonts.google.com/specimen/Roboto+Serif), serif
  - [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono), monospace
- [IBM 3270](https://github.com/rbanffy/3270font), monospace
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/), monospace
- [Ubuntu Monospace](https://design.ubuntu.com/font/), monospace
- [Noto Mono for Powerline](https://github.com/powerline/fonts/), monospace
- Amazon Ember and Bookerly from [Amazon Complete Font Set](https://developer.amazon.com/en-US/alexa/branding/echo-guidelines/identity-guidelines/typography), sans serif, serif
- [LXGW WenKai / 霞鹜文楷](https://github.com/lxgw/LxgwWenKai), serif
- [LXGW Neo XiHei / 霞鹜新晰黑](https://github.com/lxgw/LxgwNeoXiHei), sans-serif
- 喜鹊宋体, serif
- [Atkinson Hyperlegible](https://brailleinstitute.org/freefont), sans-serif
- [Charis SIL](https://software.sil.org/charis/), serif
