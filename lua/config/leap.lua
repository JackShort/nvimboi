local function get_targets(winid, dir)
  local wininfo =  vim.fn.getwininfo(winid)[1]
  local cur_line = vim.fn.line('.')
  -- Get targets.
  local targets = {}
  local lnum = dir and cur_line or wininfo.topline
  local max_line = dir and (wininfo.botline + 1) or cur_line
  while lnum < max_line do
    -- Skip folded ranges.
    local fold_end = vim.fn.foldclosedend(lnum)
    if fold_end ~= -1 then 
      lnum = fold_end + 1
    else
      if lnum ~= cur_line then
        table.insert(targets, { pos = { lnum, 1 } })
      end
      lnum = lnum + 1
    end
  end
  -- Sort them by vertical screen distance from cursor.
  local cur_screen_row = vim.fn.screenpos(winid, cur_line, 1)['row']
  local function screen_rows_from_cursor(t)
    local t_screen_row = vim.fn.screenpos(winid, t.pos[1], t.pos[2])['row']
    return math.abs(cur_screen_row - t_screen_row)
  end
  table.sort(targets, function (t1, t2)
    return screen_rows_from_cursor(t1) < screen_rows_from_cursor(t2)
  end)
  if #targets >= 1 then return targets end
end

-- Map this function to your preferred key.
local function leap_lines_up()
  winid = vim.api.nvim_get_current_win()
  require('leap').leap { targets = get_targets(winid, false), target_windows = { winid }, }
end

local function leap_lines_down()
  winid = vim.api.nvim_get_current_win()
  require('leap').leap { targets = get_targets(winid, true), target_windows = { winid }, }
end

return { leap_lines_up = leap_lines_up, leap_lines_down = leap_lines_down }
