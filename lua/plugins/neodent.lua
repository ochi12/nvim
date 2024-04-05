return {
  "ochi12/neodent.nvim",

  config = function()
    require("neodent").setup({
      ["asm, s"] = {
        tabstop    = 10,
        shiftwidth = 10,
        expandtab = false,
      },
      ["lua, js"] = {
        tabstop = 2,
        shiftwidth = 2,
        expandtab = true
      },
      ["c, cpp"] = {
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true
      },
      ["py"] = {
        tabstop = 4,
        shiftwidth = 4,
        expandtab = false
      }

    })
  end
}
