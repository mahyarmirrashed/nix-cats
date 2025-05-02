# Nix Cats ❄️ 🐱

Welcome to my Neovim configuration, powered by [Nix Cats](https://github.com/BirdeeHub/nixCats-nvim)! It contains my personal Neovim setup, designed to be reproducible, modular, and easy to tweak. If you're wondering what the hell this is, this `README.md` will explain what my config does and how to try it without slogging through the Nix Cats docs.

## Nix Cats? Never heard of it...

Nix Cats, short for Nix Categories, is a Nix-based package manager specifically designed for Neovim. It allows for managing Neovim configurations and plugins in a reproducible and declarative way.

Think of it as like Neovim dotfiles, but supercharged with Nix to avoid dependency hell and configuration drift. This means that it respects normal Neovim configuration directories like `ftplugin/`, `pack/`, and `after/`.

The "category" part of Nix Cats refers to arbitrary labels (e.g. `debug`, `cmp`, `format`) that groups related plugins, runtime dependencies, and settings together. This lets me enable/disable features for different workflows.

Above all, and unlike other Nix-based Neovim configuration tools like [NixVim](https://github.com/nix-community/nixvim) or [Home Manager](https://github.com/nix-community/home-manager), Nix Cats does not require conflating Nix and Lua code.

- **Nix** for package management; and
- **Lua** for Neovim configuration.

This clear separation of responsibilities makes my Neovim config much more maintainable, reproducible, and, consequently: less buggy.

### How does it Work?

In the `flake.nix`, we define our categories and package definitions.

```nix
categoryDefinitions = {
  core = [ "vim-sleuth" "telescope.nvim" ];
  ai = [ "avante-nvim" ];
};
packageDefinitions = {
  dev = { pkgs, ... }: { categories = { core = true; ai = true; }; };
  minimal = { pkgs, ... }: { categories = { core = true; }; };
};
```

Then, in the `init.lua`, we query if the category is enabled, and configure our environment conditionally from there.

```lua
-- init.lua
if nixCats("ai") then
  require("config.ai")
end

-- config/ai/init.lua
require("lz.n").load {
  {
    "avante.nvim",
    for = "ai",
    event = "DeferredUIEnter",
    -- configure as usual
  },
}
```

## How to Try It

To run, first, install [Nix](https://nixos.org/download/) and enable flakes (`nix --version` to check). Then, run `nix shell 'github:mahyarmirrashed/nix-cats'`.

## Final Notes

This is *my* setup, so it's tailored for me. But, feel free to steal ideas or fork to make it your own badass Neovim config. Have fun! 🚀

#### References

Special thanks to:

- [@BirdeeHub](https://github.com/BirdeeHub) for creating Nix Cats, `lze`, `lzextras`, and for helping me when I got stuck.
- [@blodewolfepc](https://github.com/bloodwolfepc) for the great Nix Cats configuration which I used as a reference.
