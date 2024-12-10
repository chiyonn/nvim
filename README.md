# nvim

## 依存
masonは今のところ、使用見送り中なので

**LSP**
- tsserverを使用
    ```zsh
    npm install -g typescript typescript-language-server
    ```

- pyrightを使用
    ```zsh
    npm install -g pyright
    ```

- lua-language-serverを使用
    ```zsh
    sudo pacman -S lua-language-server
    ```

- prettierを使用
    ```zsh
    npm install -g prettier
    ```

**フォーマット用コマンド**
- python
    ```zsh
    yay -S python-black python-isort
    ```

- jinja2
    ```zsh
    yay -S python-djlint python-djhtml
    ```


**検索用コマンド**
- ripgrep
    ```zsh
    sudo pacman -S ripgrep
    ```
