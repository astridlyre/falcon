" ============================================================
" Falcon
"
" URL: https://github.com/fenetikm/falcon
" Author: Michael Welford
" License: MIT
" Last Change: 2018/01/06 22:27
" ============================================================

if exists('g:lightline')
  let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

  let s:p.normal.left = [[["#000004", 0], ["#dfdfe5", 254]], [["#d4d4d9", 248], ["#28282d", 241]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.normal.right = [[["#000004", 0], ["#dfdfe5", 254]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.normal.middle = [[["#57575e", 241], ["#28282d", 237]]]
  let s:p.inactive.left = [[["#57575e", 241], ["#28282d", 237], 'italic'], [["#5a5a60", 241], ["#28282d", 237], 'italic']]
  let s:p.inactive.right = [[["#57575e", 241], ["#28282d", 237], 'italic'], [["#5a5a60", 241], ["#28282d", 237], 'italic']]
  let s:p.inactive.middle = [[["#57575e", 241], ["#28282d", 237], 'italic']]
  let s:p.insert.left = [[["#000004", 0], ["#ff3600", 202]], [["#d4d4d9", 248], ["#28282d", 241]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.insert.right = [[["#000004", 0], ["#ff3600", 202]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.insert.middle = [[["#57575e", 241], ["#28282d", 241]]]
  let s:p.replace.left = [[["#000004", 0], ["#ff761a", 208]], [["#d4d4d9", 248], ["#28282d", 241]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.replace.right = [[["#000004", 0], ["#ff761a", 208]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.replace.middle = [[["#57575e", 241], ["#28282d", 241]]]
  let s:p.visual.left = [[["#000004", 0], ["#ffc552", 220]], [["#d4d4d9", 248], ["#28282d", 241]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.visual.right = [[["#000004", 0], ["#ffc552", 220]], [["#787882", 248], ["#28282d", 241]]]
  let s:p.visual.middle = [[["#57575e", 241], ["#28282d", 241]]]
  let s:p.tabline.left = [[["#57575e", 241], ["#28282d", 237]]]
  let s:p.tabline.tabsel = [[["#dfdfe5", 248], ["#28282d", 237]]]
  let s:p.tabline.middle = [[["#57575e", 241], ["#28282d", 237]]]
  let s:p.tabline.right = [[["#57575e", 241], ["#28282d", 237]]]
  let s:p.normal.error = [[["#000004", 254], ["#ff3600", 202]]]
  let s:p.normal.warning = [[["#000004", 208], ["#ff761a", 208]]]
  let s:p.normal.ok = [[["#000004", 208], ["#718e3f", 208]]]

  let g:lightline#colorscheme#falcon#palette = lightline#colorscheme#flatten(s:p)
endif

" ===================================
" Generated by Estilo 1.3.3
" https://github.com/jacoborus/estilo
" ===================================
