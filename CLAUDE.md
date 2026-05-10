# dotfiles

macOS向けの個人dotfilesリポジトリ。シェル・ターミナル・エディタ・開発ツールの設定を一元管理する。

## プロジェクト構成

```
.zshrc              # ZSHエントリポイント（.zsh.d/*.zshを順次読み込み、eval.zshは最後）
.zsh.d/             # ZSH設定モジュール群
  alias.zsh         # エイリアス・ユーティリティ関数
  eval.zsh          # starship, thefuck, fzf, mise の初期化（最後に実行）
  export.zsh        # 環境変数・PATH設定
  options.zsh       # シェルオプション（vi mode, auto_cd）
  source.zsh        # 外部スクリプト読み込み
  git_completion.zsh # Git補完
.gitconfig          # Gitエイリアス・設定（ローカル設定は ~/.gitconfig.local で分離）
.tmux.conf          # tmux設定（prefix: Ctrl+j, Catppuccin theme）
.wezterm.lua        # Wezterm設定（Ayu Dark, JetBrains Mono）
.claude/            # Claude Code設定（CLAUDE.md, keybindings.json, settings.json, commands/）※settings.local.jsonはマシン固有のため除外
.config/            # アプリケーション設定（lazygit, yazi, zellij）
etc/                # Homebrew/VSCode/Claude Skills パッケージリスト、VSCode設定、starship設定
scripts/            # インストール・ダンプ用スクリプト
.tool-versions      # mise ランタイムバージョン定義
```

## インストール方式

`install.sh` → `scripts/` 内のスクリプトを実行:
1. `create_symbolic_link.sh`: `.??*` パターンのドットファイルを `$HOME` にシンボリックリンク（`.git`, `.gitignore`, `.DS_Store` は除外）。VSCode設定とstarship設定も個別にリンク
2. `install_brew.sh`: Homebrew formulae/cask を `etc/brew_formulae`, `etc/brew_cask` からインストール
3. `install_vsc_extensions.sh`: VSCode拡張を `etc/vsc_extensions` からインストール

`dump.sh` → 現在のHomebrew/VSCode状態を `etc/` にエクスポート

## 注意: install.sh / dump.sh のバグ

`install.sh` と `dump.sh` でスクリプトファイル名に `.sh.sh` と二重拡張子を指定している（実際のファイルは `.sh`）。修正する場合はこの点に注意。

## 設計方針

- **Vim キーバインド統一**: ZSH(vi mode), tmux, wezterm, yazi, zellij, VSCode(vim plugin) すべてでVim系操作
- **テーマ統一**: Catppuccin / Ayu Dark 系を各ツールで採用
- **APIキー管理**: `~/openai_api_key`, `~/anthropic_api_key` ファイルから読み込み（リポジトリに含めない）
- **Docker**: Colima経由でDockerソケットを利用

## 編集ルール

- 設定変更時はシンボリックリンク構造を意識する。`$HOME` のファイルはこのリポジトリへのリンク
- エイリアス追加は `.zsh.d/alias.zsh` へ
- 環境変数追加は `.zsh.d/export.zsh` へ
- 新しいツールの初期化は `.zsh.d/eval.zsh` へ
- Homebrewパッケージ追加後は `dump.sh` で `etc/` を更新
