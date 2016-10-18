set nonumber
set nofoldenable
set nocursorcolumn
set nocursorline
if exists('+relativenumber')
  set norelativenumber
end
set hidden


noremap <PageUp> :bp<CR>
noremap <Left> :bp<CR>
noremap <PageDown> :bn<CR>
noremap <Right> :bn<CR>
noremap Q :q<CR>

b 1
7,18SyntaxInclude 
b 2
6,8SyntaxInclude bash
b 1
