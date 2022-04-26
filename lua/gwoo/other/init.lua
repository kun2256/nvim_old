vim.cmd [[
function! VimConfig()
    function! Dot(path)
        return "~/.config/nvim/" . a:path
    endfunction

    for file in split(glob(Dot('static/*.vim')),'\n')
        exe 'source' file
    endfor
    for file in split(glob(Dot('static/custom_vimscript/*.vim')),'\n')
        exe 'source' file
    endfor
endfunction
]]

-- 自动执行安装插件
vim.cmd [[
augroup packer
au!
au BufWritePost plugins.lua source <afile> | PackerSync
augroup END ]]
-- 自动执行vim脚本
vim.cmd[[ 
  augroup sourceMy
  au!
  aut BufWritePost *.vim source <afile>
  augroup END
]]
