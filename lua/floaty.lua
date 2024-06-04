local floaty = {}

floaty.open = function(content)
  local buffer = vim.api.nvim_create_buf(false, true)
  local height = vim.api.nvim_win_get_height(0)
  local width = vim.api.nvim_win_get_width(0)
  local win_height = math.ceil(height * 0.75)
  local win_width = math.ceil(width * 0.75)
  local col = math.ceil((width - win_width) / 2)
  local row = math.ceil((height - win_height) / 2)

  if type(content) == "table" then
    vim.api.nvim_buf_set_lines(buffer, 0, -1, false, content)
  else
    vim.api.nvim_buf_set_lines(
      buffer,
      0,
      -1,
      false,
      vim.split(content, "\n", { plain = true })
    )
  end

  vim.api.nvim_open_win(buffer, true, {
    border = "single",
    col = col,
    height = win_height,
    relative = "editor",
    row = row,
    style = "minimal",
    width = win_width,
  })
end

return floaty
