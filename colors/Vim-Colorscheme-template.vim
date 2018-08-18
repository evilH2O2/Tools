"------------------------------------------------------
" Thanks to @ggalindezb for the template  |         
"------------------------------------------------------


"----------------------------------------------------------------
" 常规设置                                           |
"----------------------------------------------------------------

" --------------------------------
set background=dark
" - or ---------------------------
set background=light
" --------------------------------

highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="template"


"--------------------------------------------------------------------
" 具体设置                                |
"--------------------------------------------------------------------

"----------------------------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |Google Translate|
"-----------------------------------------------------------------------------------
"highlight-groups:http://vimdoc.sourceforge.net/htmldoc/syntax.html#highlight-groups
"-----------------------------------------------------------------------------------

" --------------------------------
" 编辑器设置
" --------------------------------
hi Normal          ctermfg=none    ctermbg=none    cterm=none "普通文本
hi Cursor          ctermfg=none    ctermbg=none    cterm=none "光标所在的字符
hi CursorLine      ctermfg=none    ctermbg=none    cterm=none "置位 'cursorline' 时，光标所在的屏幕行
hi LineNr          ctermfg=none    ctermbg=none    cterm=none " ":number"和":#" 命令与置位'number'或'relativenumber' 选项时的行号
hi CursorLineNR    ctermfg=none    ctermbg=none    cterm=none "和 LineNr 类似，置位 'cursorline' 或 'relativenumber' 时用于光标行
                                                              
" -----------------
" 数字列,带有行号和折叠的列
" -----------------
hi CursorColumn    ctermfg=none    ctermbg=none    cterm=none "置位 'cursorcolumn' 时，光标所在的屏幕列
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none "指示折叠的打开和关闭
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none "显示  signs  的列
hi Folded          ctermfg=none    ctermbg=none    cterm=none "用于关闭的折叠的行

" -------------------------
" 窗口/制表符分隔符,显示窗口分割和打开标签的区域
" -------------------------
" 处理窗口分隔线的外观

hi VertSplit       ctermfg=none    ctermbg=none    cterm=none "分离垂直分割窗口的列
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none "用于 'colorcolumn' 设置的列
hi TabLine         ctermfg=none    ctermbg=none    cterm=none "标签页行，非活动标签页标签
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none "标签页行，没有标签的地方
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none "标签页行，活动标签页标签


" -------------------------------
" 文件导航/搜索
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none "目录名 (还有列表里的其它特殊名字)
hi Search          ctermfg=none    ctermbg=none    cterm=none "搜索匹配的外观
hi IncSearch       ctermfg=none    ctermbg=none    cterm=none "'incsearch' 高亮；也用于被 ":s///c" 替换的文本

" -----------------
"  提示/状态 
" -----------------
hi StatusLine      ctermfg=none    ctermbg=none    cterm=none "当前窗口的状态行
hi StatusLineNC    ctermfg=none    ctermbg=none    cterm=none "非当前窗口的状态行,如果等于 "StatusLine"，Vim 会使用 "^^^" 指示当前
                                                               "窗口的状态行
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none "补全的当前匹配
hi Question        ctermfg=none    ctermbg=none    cterm=none "提示和 yes/no 问题
hi Title           ctermfg=none    ctermbg=none    cterm=none " ":set all"、":autocmd" 等输出的标题
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none "'showmode' 消息 (例如，"-- INSERT --")
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none "more-prompt 
" --------------
"  视觉辅助,匹配括号，视觉块选择等等
" --------------
hi MatchParen      ctermfg=none    ctermbg=none    cterm=none ”如果光标所在或刚刚在它之前的字符是配对的括号一部分的话，它和它的配对
hi Visual          ctermfg=none    ctermbg=none    cterm=none "可视模式的选择区
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none "Vim 是 "选择区的非拥有者" 时，可视模式的选择区
hi NonText         ctermfg=none    ctermbg=none    cterm=none "窗口尾部的 '@'，'showbreak' 的字符和其它在文本里实际不存在的字
                                                              "符 (例如，代替行尾放不下的双宽字符而显示的 ">")

hi Todo            ctermfg=none    ctermbg=none    cterm=none "需要特殊注意的部分；主要是关键字 TODO FIXME 和 XXX
hi Underlined      ctermfg=none    ctermbg=none    cterm=none "需要突出的文本，HTML 链接
hi Error           ctermfg=none    ctermbg=none    cterm=none "有错的构造
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none "错误信息,Error
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none "警告信息,warning
hi Ignore          ctermfg=none    ctermbg=none    cterm=none " 
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none " ":map" 列出的 Meta 和特殊键，也包括文本里不可显示字符的显示                                                                        "和'listchars'.一般的: 和实际内容显示上有差异的文本
" --------------------------------
" 变量类型,布尔变量，数字，字符串等等
" --------------------------------
hi Constant        ctermfg=none    ctermbg=none    cterm=none "任何常数
hi String          ctermfg=none    ctermbg=none    cterm=none "字符串常数: "这是字符串"
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none "字符串分隔符
hi Character       ctermfg=none    ctermbg=none    cterm=none "字符常数: 'c'、'\n'
hi Number          ctermfg=none    ctermbg=none    cterm=none "数字
hi Boolean         ctermfg=none    ctermbg=none    cterm=none "布尔值
hi Float           ctermfg=none    ctermbg=none    cterm=none "浮点值

hi Identifier      ctermfg=none    ctermbg=none    cterm=none "任何变量名
hi Function        ctermfg=none    ctermbg=none    cterm=none "函数名 (也包括: 类的方法名)
" --------------------------------
" 语言结构，条件，循环，关键词，注释等等
" --------------------------------
hi Statement       ctermfg=none    ctermbg=none    cterm=none "任何语句
hi Conditional     ctermfg=none    ctermbg=none    cterm=none "条件语句,if、then、else、endif、switch 等
hi Repeat          ctermfg=none    ctermbg=none    cterm=none "循环语句,for、do、while 等
hi Label           ctermfg=none    ctermbg=none    cterm=none "case、default 等
hi Operator        ctermfg=none    ctermbg=none    cterm=none ""sizeof"、"+"、"*" 等
hi Keyword         ctermfg=none    ctermbg=none    cterm=none " 关键词
hi Exception       ctermfg=none    ctermbg=none    cterm=none "try、catch、throw等
hi Comment         ctermfg=none    ctermbg=none    cterm=none "任何注释

hi Special         ctermfg=none    ctermbg=none    cterm=none "任何特殊符号
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none "常数中的特殊字符
hi Tag             ctermfg=none    ctermbg=none    cterm=none "可以使用 CTRL-] 的项目
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none "需要注意的字符
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none "注释里的特殊部分
hi Debug           ctermfg=none    ctermbg=none    cterm=none "调试语句

" ----------
" C like，适合语法像 C 语言的，可以在这里设置
" ----------
hi PreProc         ctermfg=none    ctermbg=none    cterm=none "通用预处理命令
hi Include         ctermfg=none    ctermbg=none    cterm=none "预处理命令 #include
hi Define          ctermfg=none    ctermbg=none    cterm=none "预处理命令 #define
hi Macro           ctermfg=none    ctermbg=none    cterm=none "同 Define
hi PreCondit       ctermfg=none    ctermbg=none    cterm=none "预处理命令 #if、#else、#endif 等

hi Type            ctermfg=none    ctermbg=none    cterm=none "类型，int、long、char 等
hi StorageClass    ctermfg=none    ctermbg=none    cterm=none "static、register、volatile 等
hi Structure       ctermfg=none    ctermbg=none    cterm=none "struct、union、enum 等
hi Typedef         ctermfg=none    ctermbg=none    cterm=none "typedef 定义


" --------------------------------
" Diff，vim diff的颜色，块相等，块不同，块不存在等等
" --------------------------------
hi DiffAdd         ctermfg=none    ctermbg=none    cterm=none "比较模式: 增加的行
hi DiffChange      ctermfg=none    ctermbg=none    cterm=none "比较模式: 改变的行
hi DiffDelete      ctermfg=none    ctermbg=none    cterm=none "比较模式: 删除的行
hi DiffText        ctermfg=none    ctermbg=none    cterm=none "比较模式: 改变行里的改动文本

" --------------------------------
" 完成菜单，插入模式完成菜单，背景，滚动条，所选项目，未选择项目。
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none "弹出菜单：正常项目
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none "弹出菜单：所选项目
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none "弹出菜单：滚动条
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none "弹出菜单：翻阅滚动条 


" --------------------------------
" 拼写检查，如果您使用Vim进行拼写检查，则非常有用。
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none "拼写检查器不能识别的单词
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none "应该大写字母开头的单词
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none "拼写检查器能识别但只在其它区域使用的单词
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none "拼写检查器能识别但很少使用的单词

