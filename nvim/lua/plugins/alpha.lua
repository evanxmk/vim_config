return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
    ___  ___ _   __
    |  \/  || | / /
    | .  . || |/ / 
    | |\/| ||    \ 
    | |  | || |\  \
    \_|  |_/\_| \_/
              
      @mk3-14159
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
