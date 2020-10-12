" --------------------------------------------------
" --------------------------------------------------
" theme
" --------------------------------------------------
" --------------------------------------------------

" Show syntax highlighting groups for word under cursor
nmap <leader>w :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

highlight clear
syntax reset

" reset background
set background=light

"reset 
hi NonText ctermbg=15 ctermfg=8 cterm=NONE guifg=#000000 gui=NONE
hi Comment ctermbg=15 ctermfg=8 cterm=NONE guifg=#000000 gui=NONE
hi Constant ctermbg=15 ctermfg=8 cterm=NONE guifg=#000000 gui=NONE
hi Error ctermbg=15 ctermfg=8 cterm=NONE guifg=#000000 gui=NONE
hi Identifier ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Ignore ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi PreProc ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Special ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Statement ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi String ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Todo ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Type ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Underlined ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi StatusLine ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi StatusLineNC ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi VertSplit ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi TabLine ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi TabLineFill ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi TabLineSel ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Title ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi LineNr ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi helpLeadBlank ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi helpNormal ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Visual ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi VisualNOS ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Pmenu ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi PmenuSbar ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi PmenuSel ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi PmenuThumb ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi FoldColumn ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Folded ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi WildMenu ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi SpecialKey ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi DiffAdd ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi DiffChange ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi DiffDelete ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi DiffText ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi IncSearch ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Search ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Directory ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi MatchParen ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi SpellBad ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE guisp=#ff0000
hi SpellCap ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE guisp=#0000ff
hi SpellLocal ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE guisp=#ff00ff
hi SpellRare ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE guisp=#00ffff
hi ColorColumn ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi SignColumn ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi ModeMsg ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi MoreMsg ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi Question ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi QuickFixLine ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi StatusLineTerm ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE
hi StatusLineTermNC ctermbg=15 ctermfg=8  guifg=#000000 gui=NONE

" theme

" all
highlight Normal guibg=#F7F7F7 guifg=#000000
highlight Comment guibg=#F7F7F7 guifg=#AA3731
highlight Constant guifg=#7A3E9D
highlight String guifg=#448C27
highlight Statement guifg=#7A3E9D
highlight Number guifg=#7A3E9D
highlight Function guifg=#325CC0
highlight MatchParen guibg=#BFDBFE
highlight Operator guifg=#8c8c8c

" gui
hi StatusLineTerm guibg=#F0F0F0 
hi StatusLineTermNC guibg=#F0F0F0 
hi SignColumn guibg=#F7F7F7
hi Visual guibg=#BFDBFE 
hi Search guibg=#FFBC5D 
hi LineNr guifg=#9DA39A guibg=#F7F7F7
hi VertSplit guifg=#DDDDDD guibg=#DDDDDD
hi StatusLine guibg=#DDDDDD guifg=#007ACC
hi StatusLineNC guibg=#DDDDDD guifg=#474747
hi ErrorMsg ctermbg=15 ctermfg=8 guibg=#f90202 guifg=#F0F0F0 gui=NONE

"typscript
hi typescriptTemplate guifg=#448C27
hi typescriptTemplateSB guifg=#777777
hi typescriptTemplateSubstitution guifg=#777777
hi typescriptAssign guifg=#8c8c8c
hi typescriptBraces guifg=#8c8c8c
hi typescriptParens guifg=#8c8c8c
hi typescriptClassKeyword guifg=#325CC0
hi typescriptClassExtends guifg=#325CC0
hi typescriptAccessibilityModifier guifg=#325CC0
hi typescriptCall guifg=#325CC0
hi typescriptObjectLabel guifg=#000000
hi typescriptReadonlyModifier guifg=#000000
hi typescriptDOMDocProp guifg=#000000
hi typescriptInterfaceKeyword guifg=#000000
hi typescriptInterfaceExtends guifg=#000000
hi typescriptIdentifierName guifg=#325CC0

"coc
hi CocUnderline guifg=#F05050 gui=underline
hi CocErrorSign guifg=#F05050 gui=bold
hi CocErrorFloat guibg=#BDBDBD
hi CocInfoFloat guibg=#BDBDBD
hi CocHintFloat guibg=#BDBDBD
hi CocWarningFloat guibg=#BDBDBD
hi CocFloating guibg=#BDBDBD
hi CocHighlightText guibg=#BFDBFE

"gitgutter
hi GitGutterAdd guifg=#448C27
hi GitGutterChange guifg=#325CC0 
hi GitGutterDelete guifg=#AA3731
