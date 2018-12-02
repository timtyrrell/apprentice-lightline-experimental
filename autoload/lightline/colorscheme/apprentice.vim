
"  <color>  [   <gui>   <cterm>]
let s:__0 = [ '#1c1c1c', '234' ]
let s:__1 = [ '#af5f5f', '131' ]
let s:__2 = [ '#5f875f', '65'  ]
let s:__3 = [ '#87875f', '101' ]
let s:__4 = [ '#5f87af', '67'  ]
let s:__5 = [ '#5f5f87', '60'  ]
let s:__6 = [ '#5f8787', '66'  ]
let s:__7 = [ '#6c6c6c', '242' ]
let s:__8 = [ '#585858', '240' ]
let s:__9 = [ '#ff8700', '208' ]
let s:_10 = [ '#87af87', '108' ]
let s:_11 = [ '#ffffaf', '229' ]
let s:_12 = [ '#8fafd7', '110' ]
let s:_13 = [ '#8787af', '103' ]
let s:_14 = [ '#5fafaf', '73'  ]
let s:_15 = [ '#ffffff', '231' ]
let s:_bg = [ '#262626', '235' ]
let s:_fg = [ '#bcbcbc', '250' ]

let s:bg2 = [ '#303030', '236' ] " almost-background
"let s:bg3 = [ '#242424', '236' ] " almost-background

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

func! s:fg_bg(fg, bg)
  return [ a:fg[0], a:bg[0], a:fg[1], a:bg[1] ]
endfunc

let s:p.inactive.left   = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.inactive.middle = [ s:fg_bg( s:__8, s:__0 )                          ]
let s:p.inactive.right  = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.insert.left     = [ s:fg_bg( s:_bg, s:_10 ), s:fg_bg( s:_bg, s:__6 ) ]
let s:p.insert.middle   = [ s:fg_bg( s:_fg, s:__8 )                          ]
let s:p.insert.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__6 ) ]
let s:p.normal.error    = [ s:fg_bg( s:__0, s:__1 )                          ]
let s:p.normal.left     = [ s:fg_bg( s:_bg, s:__6 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.middle   = [ s:fg_bg( s:__7, s:bg2 )                          ]
let s:p.normal.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.normal.warning  = [ s:fg_bg( s:__0, s:__9 )                          ]
let s:p.replace.left    = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.replace.middle  = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.replace.right   = [ s:fg_bg( s:_bg, s:__1 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.tabline.left    = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.tabline.middle  = [ s:fg_bg( s:_fg, s:_bg )                          ]
let s:p.tabline.right   = [ s:fg_bg( s:_bg, s:__8 )                          ]
let s:p.tabline.tabsel  = [ s:fg_bg( s:_bg, s:__3 )                          ]
let s:p.visual.left     = [ s:fg_bg( s:_bg, s:__9 ), s:fg_bg( s:_bg, s:__8 ) ]
let s:p.visual.right    = [ s:fg_bg( s:_bg, s:__3 ), s:fg_bg( s:_bg, s:__8 ) ]

let g:lightline#colorscheme#apprentice#palette = s:p
