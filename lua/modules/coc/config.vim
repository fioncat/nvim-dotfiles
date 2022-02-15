" 代码补全样式，详见:help completeopt
set completeopt=menu,menuone

set hidden

" 代码补全时使用TAB和s-TAB进行快速补全
" 这个行为和ycm的默认行为一样
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" <Enter> 快速选择补全项
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 展示光标所在处的文档
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" 在显示文档的时候，使用<C-j>, <C-k>来上下滚动
nnoremap <nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" GD - 代码跳转
nmap <silent> gd <Plug>(coc-definition)
" GR - 显示变量引用
nmap <silent> gr <Plug>(coc-references)
" K：展示文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
" 变量改名
nmap <leader>rn <Plug>(coc-rename)
" 将选中的代码格式化
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" 上一个/下一个错误
nnoremap <leader>en :call CocAction('diagnosticNext')<CR>
nnoremap <leader>ep :call CocAction('diagnosticPrevious')<CR>
" 打开错误列表
nnoremap <leader>ee :CocList diagnostics<CR>

let g:coc_global_extensions = [
      \'coc-lists',
      \'coc-actions',
      \'coc-snippets',
      \'coc-tabnine',
      \'coc-pairs',
      \'coc-highlight',
      \'coc-lightbulb',
      \
      \'coc-prettier',
      \'coc-markdownlint',
      \'coc-html',
      \'coc-tsserver',
      \'coc-css',
      \'coc-eslint',
      \'coc-emmet',
      \'coc-vetur',
      \
      \'coc-clangd',
      \'coc-lua',
      \'coc-go',
      \'coc-pyright',
      \'coc-rust-analyzer',
      \
      \'coc-db',
      \'coc-json',
      \'coc-yaml',
      \]
