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
6,8SyntaxInclude shell
b 3
8,13SyntaxInclude 
b 4
15,18SyntaxInclude 
b 5
1,26SyntaxInclude 
b 6
13,15SyntaxInclude 
b 7
1,3SyntaxInclude 
b 8
1,3SyntaxInclude 
b 9
1,10SyntaxInclude 
b 10
6,10SyntaxInclude bash
b 11
1,4SyntaxInclude bash
b 12
6,27SyntaxInclude bash
b 1
