# Customizing my Macbook Air M2 (Eiji)

Originally, I had kept this document under `dotfiles_mac`, however, there might not be any "dotfiles" in linux-style-ricing sense. This will contain settings, apps, profile-exports, exports from apps (which support their settings to be exported), etc.   

Ofcourse, this is not meant to be an exhaustive list, even for myself, because there are numerous other small tweaks here and there that I keep on doing to make my workflow more comfortable. However, this document will list out some "major" tools / tweaks.   

## [Cot](https://coteditor.com/) 

> Simple text editor without too much distractions. Supports multiple languages (including markdown).  

Install command line tool via `CotEditor -> Settings -> General` guide.  

```bash
$ sudo ln -s /Applications/CotEditor.app/Contents/SharedSupport/bin/cot /usr/local/bin/cot

$ which cot
/usr/local/bin/cot

$ cot README.md
```

## [starship](https://starship.rs/)

> modern PS1  

Append the below line in `.zshrc` -  

```txt
eval "$(starship init zsh)"
```

## [bat](https://github.com/sharkdp/bat)

>  A `cat` command clone with syntax highlighting  

```bash
bat README.md --theme=OneHalfDark
```

Find where `bat` reads configs from  

```bash
$ bat --config-file
/Users/devp/.config/bat/config
```

- Config file: `bat_config`  (path: `/Users/devp/.config/bat/config`)  

## [fig](https://fig.io/) (❗️ not working)

> Autocomplete for terminal  

## [CopyQ](https://github.com/hluk/CopyQ)

> Clipboard manager   

There will be an icon on the status bar (top) which when clicked, lists all the copied items in a new window. Pressing <kbd>Enter</kbd> will insert the selected item in the editor previously opened.    

It can also be operated from terminal (see github link for more commands or `copyq —help`).  

```bash
copyq toggle
copyq clipboard
```

⚠️ Enable it to control the system from "Settings -> Privacy & Security -> Accessibility".  

⚠️ ~~The app needs to be launched everytime I think~~  -> fix it from "File->Preferences"  

- Config file: `copyq_config.cpq` (path: import / export from "File->Preferences")    
- Theme file (and path): `/Users/devp/.config/copyq/themes/copyq_arial_large_solarized.ini`   

## Skim

## hidden bar

## app cleaner

## obsidian

## Show markdown in Finder Preview

Install [qlmarkdown](https://github.com/toland/qlmarkdown) and launch it once from the app drawer.  

*Might as well have a look at other [quick look plugins](https://github.com/sindresorhus/quick-look-plugins)*  



## System Utils / Settings

### Keyboard

"Settings -> Keyboard -> Text Input -> Edit"  
Uncheck all options like - smart quotes, double spacebar to add dot, correct spelling automatically, etc.  

Enable 🌐 key to show emoji pop-up.  

### Screenshot

Press `Shift ⇧ + Command ⌘ + 5` on keyboard, then choose to capture entire screen, an app window or a specific area.  
Customize it from the "Options" to store the screenshots in `/Users/devp/Pictures` directory to avoid cluttering the Desktop.  


### Preview

Some files support preview without opening them by selecting the file and pressing <kbd>spacebar</kbd>.  

## How to add "open with vscode" in macOS context menu?

Use "Automator" to create "workflows" for "Quick Actions" and follow [this guide](https://gist.github.com/idleberg/bc65021a736e9139e3e31f7f2c761d5d).  

Additionally, read about `open(1)` with the switch `-a` on man pages in iTerm2.  

Edit this "Quick Action" at `~/Library/Services/Open\ in\ Visual\ Studio\ Code.workflow`. Double clicking this file in Finder will open it in Automator. Alternatively, we can Right Click and select "Show Package Contents" to reveal `Info.plist`, `Resources/`, etc.  

Changing icon image? Change it through the Automator app itself. Choose a `.png` file. We will need to restart Finder after this (I haven't found other workarounds except relaunching Finder).  

## Relaunching Finder (or other unresponsive apps)

<kbd>Command ⌘ + Option ⌥ + Esc</kbd> from anywhere. This is similar to "task manager running apps on windows". It opens up a pop-up with a list of running apps, which can be forced quit or relaunched.  


## Go to a hidden path in Finder

<kbd>Command ⌘ + Shift ⇧ + G</kbd> anywhere in Finder window [will open a pop-up](https://apple.stackexchange.com/questions/63791/is-it-possible-to-edit-the-path-and-view-the-folder-path-in-the-finder) where we can type partial path name to get suggestions via fuzzy completions.   


## References

- https://wangchujiang.com/awesome-mac/  
- https://www.youtube.com/@macvince  
