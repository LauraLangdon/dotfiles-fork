" Custom Vim Commands
" ###################
"
" Reference:
" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/



" HELPERS
" -------

" Ignore accidental upcase when quitting/writing
command W w
command Q q

" Create directory for opened file
command Mkdir !mkdir -p %:p:h

" Copy file path
command FilePath !ls %:p | pbcopy



" THEMES
" ------

" Highlight Extra Whitespace
command PsyHighlightWhitespace
  \ hi ExtraWhitespace ctermbg=darkred guibg=darkred
  \ | match ExtraWhitespace /\s\+$\| \+\ze\t/


" Material Theme
command PsyThemeMaterial
  \ colorscheme material
  \ | set background=dark
  \ | AirlineTheme material
  \ | let g:material_theme_style = 'default'
  \ | hi VertSplit guibg=#2c3a41 guifg=#2c3a41


" Smyck Theme
command PsyThemeSmyck
  \ colorscheme smyck
  \ | set background=dark
  \ | AirlineTheme minimalist
  \ | hi VertSplit guifg=#424242 guibg=#424242


