-- TODO: add a custom logo to the dashboard
return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[ _____ ______   _______   ________  ________  ___  ___  ________      ___    ___ 
|\   _ \  _   \|\  ___ \ |\   __  \|\   ____\|\  \|\  \|\   __  \    |\  \  /  /|
\ \  \\\__\ \  \ \   __/|\ \  \|\  \ \  \___|\ \  \\\  \ \  \|\  \   \ \  \/  / /
 \ \  \\|__| \  \ \  \_|/_\ \   _  _\ \  \    \ \  \\\  \ \   _  _\   \ \    / / 
  \ \  \    \ \  \ \  \_|\ \ \  \\  \\ \  \____\ \  \\\  \ \  \\  \|   \/  /  /  
   \ \__\    \ \__\ \_______\ \__\\ _\\ \_______\ \_______\ \__\\ _\ __/  / /    
    \|__|     \|__|\|_______|\|__|\|__|\|_______|\|_______|\|__|\|__|\___/ /     
                                                                    \|___|/      
                                                                                 
                                                                                 
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
