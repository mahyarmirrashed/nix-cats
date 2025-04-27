# Nix Cats

A supercalifragilisticexpialidocious Neovim configuration using Nix.

## What is Nix?

[Nix](https://nixos.org/) is a package manager and tool for configuring software environments. It aims for reproducibility, isolation, and atomicity using a functional programming approach to define and manage software installations.

## What is Nix Cats?

[Nix Cats](https://github.com/BirdeeHub/nixCats-nvim), short for Nix Categories, is a Nix-based package manager specifically designed for Neovim. It allows users to manage Neovim configurations and plugins in a reproducible, declarative way.

### How is it Different?

Unlike other Nix-based Neovim configuration tools like [NixVim](https://github.com/nix-community/nixvim) or [Home Manager](https://github.com/nix-community/home-manager), Nix Cats aims to provide a familiar experience for Neovim users by supporting a "normal" Neovim configuration directory, making it easier for those already comfortable with Neovim to adopt Nix-based management.

### What are Categories?

Categories are arbitrary labels (e.g. `minimal`, `standard`, `full`) that group plugins, runtime dependencies, and settings into reusable categories. These categories can then be selectively enabled for different Neovim configurations: enabling modular and reusable setups.

This is the **core innovation** of Nix Cats: arbitrary labels to configure environments.

### What are the Benefits?

Rather than conflating Nix and Lua code (e.g. string interpolations of Nix in Lua code), to define different "environments", we can keep them isolated:

- Nix for package management; and
- Lua for Neovim configuration.

This clear separation of responsibilities makes our Neovim environment configuration much more maintainable, reprodubible, and as a consequence: less buggy.

### How does it Work?

In our `.lua` files, we query our current environment using `nixCats('category')`, and configure our environment conditionally from there.

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
