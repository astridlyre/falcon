" Guard
if exists('g:colors_name') && g:colors_name != 'falcon'
  finish
endif

if exists('g:loaded_falcon')
  finish
endif
let g:loaded_falcon=1

function s:HandleInactiveBackground()
  " NeoVim has support for changing background colour depending on active or not
  if !exists('g:falcon_inactive')
    let g:falcon_inactive=0
  endif

  " Put in a background colour for gui
  if !exists('g:falcon_background')
    let g:falcon_background=1
  endif

  if !has('gui_running') || g:falcon_background == 0
    hi NonText guifg=#36363a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
    hi Normal guifg=#b4b4b9 ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  else
    hi NonText guifg=#36363a ctermfg=237 guibg=#1b1b20 ctermbg=0 gui=NONE cterm=NONE
    hi Normal guifg=#b4b4b9 ctermfg=249 guibg=#1b1b20 ctermbg=0 gui=NONE cterm=NONE
  endif

  if exists('+winhighlight') && g:falcon_inactive == 1
    hi ActiveWindow guibg=NONE
    hi InactiveWindow guibg=#151521

    "TODO normalfloat background settings to not use PMenu
    set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
    return
  endif

  if g:falcon_background == 1
    hi ActiveWindow guibg=#1b1b20
    hi InactiveWindow guibg=#151521
  else
    hi ActiveWindow guibg=NONE
    hi InactiveWindow guibg=NONE
  endif
endfunction

function s:SetColors()
  " Guard
  if !exists('g:colors_name') || !exists('g:loaded_falcon')
    return
  endif

  if g:colors_name != 'falcon'
    return
  endif

  call s:HandleInactiveBackground()
endfunction

augroup FalconColorScheme
	autocmd VimEnter,ColorScheme * call s:SetColors()
augroup end
