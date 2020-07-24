" regex color borrowed from
" https://github.com/vwxyutarooo/nerdtree-devicons-syntax/blob/80b43c07c288136241715447e730bfdd817a120a/after/syntax/nerdtree.vim#L231
let s:match_colors = {
  \ '(favicon)@<!\.(jpg|jpeg|bmp|png|gif|ico)$' : 'aqua',
  \ '\.go$'                       : 'beige',
  \ '\.l?hs$'                     : 'beige',
  \ '\.json$'                     : 'beige',
  \ '(angular|jquery|backbone|require|materialize|mootools|gruntfile|gulpfile)@<!\.js$' : 'beige',
  \ '\.dart$'                     : 'blue',
  \ '\.fsscript$'                 : 'blue',
  \ '\.fs[x|i]?$'                 : 'blue',
  \ '\.css$'                      : 'blue',
  \ '\.dump$'                     : 'blue',
  \ '\.(pl|pm|t|db)$'             : 'blue',
  \ '\.(jsx|tsx?)$'               : 'blue',
  \ '\.(cpp|c\+\+|cxx|cc|cp|c)$'  : 'blue',
  \ 'dropbox'                     : 'blue',
  \ '\.coffee$'                   : 'brown',
  \ '\.f#$'                       : 'darkBlue',
  \ '\.sql$'                      : 'darkBlue',
  \ '.*\.less$'                   : 'darkBlue',
  \ '\.rss$'                      : 'darkOrange',
  \ '\.(rs|rlib)$'                : 'darkOrange',
  \ '\.ai$'                       : 'darkOrange',
  \ '\.xul$'                      : 'darkOrange',
  \ '.*\.html?$'                  : 'darkOrange',
  \ '\.clj[c|s]?$'                : 'green',
  \ '\.(edn|vue)$'                : 'green',
  \ '\.fish$'                     : 'green',
  \ '\.twig$'                     : 'green',
  \ '\.styl$'                     : 'green',
  \ 'node_modules$'               : 'green',
  \ '\.mustache$'                 : 'orange',
  \ '\.hbs$'                      : 'orange',
  \ '\.slim$'                     : 'orange',
  \ '\.hrl$'                      : 'pink',
  \ '\.vim(rc)?$'                 : 'green',
  \ '\.ps[d|b]$'                  : 'darkBlue',
  \ '(materialize)@<!\.s[a|c]ss$' : 'pink',
  \ 'gulpfile\.(coffee|js|ls)'    : 'pink',
  \ '\.jl$'                       : 'purple',
  \ '\.(sln|suo)$'                : 'purple',
  \ '\.lua$'                      : 'purple',
  \ '\.java$'                     : 'purple',
  \ '.*\.php$'                    : 'purple',
  \ 'procfile$'                   : 'purple',
  \ '\.erl$'                      : 'lightPurple',
  \ '\.sh\*?'                     : 'lightPurple',
  \ '\.scala$'                    : 'red',
  \ '\.d$'                        : 'red',
  \ '.*\.e?rb$'                   : 'red',
  \ '\.mli?$'                     : 'yellow',
  \ '\.ejs$'                      : 'yellow',
  \ '\.py[c|o|d]?$'               : 'yellow',
  \ '\.(md|markdown)$'            : 'yellow',
  \ 'favicon\.ico$'               : 'yellow',
  \ 'gruntfile\.(coffee|js|ls)$'  : 'yellow',
  \ '\.(conf|ini|yml|bat|diff)$'  : 'white',
  \ '\.ds_store$'                 : 'white',
  \ '\.(gitconfig|gitignore)$'    : 'white',
  \ '\.(bashrc|bashprofile|)$'    : 'white',
  \ 'license$'                    : 'white',
  \ '.*mootools.*\.js$'           : 'white',
  \ '.*jquery.*\.js$'             : 'blue',
  \ '.*angular.*\.js$'            : 'red',
  \ '.*backbone.*\.js$'           : 'darkBlue',
  \ '.*require.*\.js$'            : 'blue',
  \ '.*materialize.*\.(js|css)$'  : 'salmon'
\ }

let s:colors = extend({
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
  \ }, get(g:, 'fern_icon_colors', {}))

for [name, col] in items(s:colors)
  " TODO: add cterm support
  if col == ''
    exe printf('hi! link FernLeafIcon_%s FernLeaf', name)
  else
    exe printf('hi FernLeafIcon_%s guifg=#%s', name, col)
  endif
endfor

for [rx, col] in items(s:match_colors)
  exe printf('syn match FernLeafIcon_%s "\c\v^\s*[^ ]\ze.*%s"', col, rx)
endfor
