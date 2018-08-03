# 显示

- 显示标签栏 `Shift+Command+T`
- 显示路径栏 `Option+Command+P`
- 显示状态栏 `Command+/`

# 显示隐藏文件

```bash
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder
```

```bash
# install alfred
brew cask install alfred
# install baidunetdisk
brew cask install baidunetdisk
# install chromedriver
brew cask install chromedriver
# install dash
brew cask install dash
# install keycaster
brew cask install keycastr
```

# Install mas

```bash
# install Keynote
mas install 409183694
# install Magnet
mas install 441258766
# install MailMaster
mas install 1233593954
# install NeteaseMusic
mas install 944848654
# install Pages
mas install 409201541
# install Numbers
mas install 409203825
# install QQ
mas install 451108668
# install 网易有道词典
mas install 491854842
```

# Install git

```bash
git config --global user.email "your_email@example.com"
git config --global user.name "yourname"
```

# Install python3

```bash
brew install python3
mkdir -p "$HOME/Library/Application Support/pip"
vim "$HOME/Library/Application Support/pip/pip.conf"
<!-- begin -->
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
<!-- end -->
pip3 install virtualenv
virtualenv --python=python3 venv
```

# Install visual studio code

## seting

```json
{
    "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
    "editor.fontSize": 16,
    "editor.renderControlCharacters": true,
    "editor.rulers": [72, 79],
    "editor.wordWrap": "on",
    "explorer.confirmDelete": false,
    "explorer.confirmDragAndDrop": false,
    "files.autoSave": "afterDelay",
    "git.autofetch": true,
    "git.confirmSync": false,
    "git.enableSmartCommit": true,
    "markdown.preview.fontSize": 14,
    "markdown.preview.lineHeight": 2,
    "python.linting.pylintEnabled": false,
    "python.pythonPath": "/usr/local/bin/python3",
    "terminal.integrated.copyOnSelection": true,
    "terminal.integrated.fontSize": 16,
    "code-runner.executorMap": {
        "javascript": "node",
        "java": "cd $dir && javac $fileName && java $fileNameWithoutExt",
        "c": "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
        "cpp": "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
        "objective-c": "cd $dir && gcc -framework Cocoa $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt",
        "php": "php",
        "python": "python3",
        "perl": "perl",
        "perl6": "perl6",
        "ruby": "ruby",
        "go": "go run",
        "lua": "lua",
        "groovy": "groovy",
        "powershell": "powershell -ExecutionPolicy ByPass -File",
        "bat": "cmd /c",
        "shellscript": "bash",
        "fsharp": "fsi",
        "csharp": "scriptcs",
        "vbscript": "cscript //Nologo",
        "typescript": "ts-node",
        "coffeescript": "coffee",
        "scala": "scala",
        "swift": "swift",
        "julia": "julia",
        "crystal": "crystal",
        "ocaml": "ocaml",
        "r": "Rscript",
        "applescript": "osascript",
        "clojure": "lein exec",
        "haxe": "haxe --cwd $dirWithoutTrailingSlash --run $fileNameWithoutExt",
        "rust": "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
        "racket": "racket",
        "ahk": "autohotkey",
        "autoit": "autoit3",
        "dart": "dart",
        "pascal": "cd $dir && fpc $fileName && $dir$fileNameWithoutExt",
        "d": "cd $dir && dmd $fileName && $dir$fileNameWithoutExt",
        "haskell": "runhaskell",
        "nim": "nim compile --verbosity:0 --hints:off --run"
    },
    "git.ignoreMissingGitWarning": true,
    "extensions.showRecommendationsOnlyOnDemand": true,
}
```

## Plugins

- ESLint
- Python

# Install vim

```bash
vim ~/.vimrc
<!-- begin -->
set autoindent
"set background=black
set cin
set cursorline
set hlsearch
set history=1000
set laststatus=2
"set list
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartindent
set tabstop=4
syntax on
<!-- end -->
```
