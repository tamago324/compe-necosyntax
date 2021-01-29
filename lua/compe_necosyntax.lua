local compe = require'compe'

local Source = {}

function Source.new()
  local self = setmetatable({}, { __index = Source })
  vim.api.nvim_call_function('necosyntax#initialize', {})
  -- self.__include_files = {}
  return self
end


-- デフォルトの設定を返す
function Source.get_metadata(self)
  return {
    priority = 100,
    dup = 0,
    menu = '[SYN]',
  }
end


function Source.determine(self, context)
  return compe.helper.determine(context)
end

function Source.complete(self, args)
  local items = {}
  -- if not vim.tbl_contains(self.__include_files, args.context.filetype) then
    for i, v in ipairs(vim.api.nvim_eval('necosyntax#gather_candidates()')) do
      -- table.insert(self.__include_files[args.context.filetype], { word = v })
      table.insert(items, { word = v })
    end
  -- end

  args.callback({
    items = items
  })
end

return Source.new()
