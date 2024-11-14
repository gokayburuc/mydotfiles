-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- NOTE :neovide configs
if vim.g.neovide then
  -- ==================== Font Configuration ====================
  -- vim.opt.guifont = "FiraCode Nerd Font:h12" -- Primary font for Neovide UI
  -- vim.opt.guifont = "SF Mono:h12" -- Primary font for Neovide UI
  vim.o.guifont = "JetBrains Mono:h11" -- Alternate font
  -- vim.o.guifont = "Source Code Pro:h11"     -- Another font option
  vim.opt.linespace = 0 -- Set space between lines to 0 for compact appearance
  vim.g.neovide_text_gamma = 2.0
  vim.g.neovide_text_contrast = 1.0

  -- ==================== Cursor Effects ====================
  vim.g.neovide_cursor_vfx_mode = "pixiedust" -- Apply visual cursor effect (e.g., pixiedust)
  vim.g.neovide_cursor_trail_size = 0 -- Disable cursor trail size
  vim.g.neovide_cursor_antialiasing = false -- Disable cursor antialiasing for performance
  vim.g.neovide_cursor_animate_command_line = false -- Disable cursor animation in command-line mode
  vim.g.neovide_hide_mouse_when_typing = false -- Show mouse even while typing

  -- ==================== Display and Scaling ====================
  vim.g.neovide_fullscreen = false -- Launch Neovide in fullscreen mode
  vim.g.neovide_no_idle = true -- Disable idle rendering to boost performance
  vim.g.neovide_scale_factor = 1.0 -- Scaling factor for Neovide window size
  vim.g.neovide_transparency = 0.9 -- Set transparency level to 90%
  vim.g.transparency = 0.9 -- Optional additional transparency setting
  vim.g.neovide_theme = "auto" -- Auto-switch Neovide theme based on system theme

  -- ==================== Refresh and Animation ====================
  vim.g.neovide_refresh_rate = 60 -- Set screen refresh rate to 60Hz
  vim.g.neovide_scroll_animation_length = 0.3 -- Control scroll animation length (in seconds)
  vim.g.neovide_scroll_animation_far_lines = 1 -- Smooth scroll for far lines

  -- ========================= Helper ==================================
  local alpha = function() return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8))) end
  vim.g.neovide_background_color = "#282828" .. alpha()
end
