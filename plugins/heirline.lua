return {
    "rebelot/heirline.nvim",
    opts = function (_, opts)
        local status = require "astronvim.utils.status"
      return require("astronvim.utils").extend_tbl(opts, {
         statuscolumn = vim.fn.has "nvim-0.9" == 1 and {
        status.component.foldcolumn(),
        status.component.signcolumn(),
        status.component.fill(),
        status.component.numbercolumn(),
      } or nil,
      })
    end
}
