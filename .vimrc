"-------------------------------------------------------------------------
"個人設定ファイル
"2016/7/9 windows & unix 共用化
"2016/11/20 mac 共用化
"	:set fileformat=unix
"-------------------------------------------------------------------------
"<S-...>          シフトキー
"<C-...>          コントロールキー
"<M-...>          altまたはmetaキー
"<A-...>          <M-...>と同じ
"<D-...>          コマンドキー (Macintosh のみ)

set number

" 全角記号のlinux対応 効かない
"set ambiwidth=double

" カッコの対応を一瞬取る
set showmatch

" Tabの移動をマッピング
" this is for windows
if has("win32")
	nnoremap <C-n> gt
	nnoremap <C-p> gT
endif

" yankringに重複するためWindows標準に変更　→　Cnt-L/R
" TODO mac マックではdesktop移動のショートカットと重複する
" this is for mac vim
" macvimでないとCommandKey<D->は割り当てできないとのこと
" consoleはNG -> missin controlの割り当てを外す必要
if has("mac")
	nnoremap <C-Left> gt
	nnoremap <C-Right> gT
endif

"---------------------------------------------------------------------------
"タブの設定　2008/7/9
" タブ幅を2に変更 2012/04/05 13:55:14
"---------------------------------------------------------------------------
set sw=2
set ts=2

"---------------------------------------------------------------------------
"折り返し無し設定
"---------------------------------------------------------------------------
set nowrap

" ウインドウの幅
set columns=80

" ウインドウの高さ
"set lines=50

"------------------------------------------------------------------------------"{{{
"改行文字とタブ文字を表示
"見にくいので削除 2013/04/03 16:44:38
"------------------------------------------------------------------------------
"set list
"set listchars=tab:>-,eol:<
"------------------------------------------------------------------------------
"改行文字とタブ文字の色設定（NonTextが改行、SpecialKeyがタブ）
"見にくいので削除 2013/04/03 16:44:38
"------------------------------------------------------------------------------
"hi NonText guibg=NONE guifg=lightgray
"hi SpecialKey guibg=NONE guifg=gray"}}}

"---------------------------------------------------------------------------
"clipboard
"---------------------------------------------------------------------------
set clipboard=unnamed

"目が疲れないが気分が沈むため止める
"colorscheme pyte 

"---------------------------------------------------------------------------
" font 設定  2013/12/03 10:48:43
" c:\wiindows\font\ でフォントビューワでフォント名を確認するか
" set guifont=* でGUIから設定
" meiryo.ttfからmeiryoKe_genにてmeiryoKe_601r1.ttcを生成してインストールする事
"---------------------------------------------------------------------------
"
"----------------------------------------------------------------------------------"
" Beginning of PC dependent setting
"----------------------------------------------------------------------------------"
set guifont=MeiryoKe_Gothic:h10
if has("mac")
	echo "this is mac "
	let $MEMO="./MEMO"
	let $MYVIMRC="./.vimrc"

	"tab の移動はth tl
	nnoremap th gT
	nnoremap tl gt

elseif has("unix")
" unix固有の設定
elseif has("win64")
" 64bit_windows固有の設定
"------------------------------------------------------------------------"{{{
"バックアップファイル
"------------------------------------------------------------------------
"set backupdir=c:/tmp
"change 2010/12/28
set backupdir=c:/honda/tmp"}}}
"---------------------------------------------------------------------------
"環境変数( windows )
"---------------------------------------------------------------------------"{{{
let $HOME="c:/honda/.vim/"
let $MEMO="c:/honda/MyDocument/Memo"
let $TIPS="c:/honda/MyDocument/Memo/tips-dev/"
let $TIPSHDVC="C:\honda\MyDocument\Memo\tips-dev\tips_vc1600.txt"
let $TIPSVIM="C:\honda\MyDocument\Memo\tips-dev\tips_vim.txt"
let $JOB="c:/honda/MyDocument/Memo/JOBS/"
let $ETC="c:/honda/MyDocument/Memo/etc/"
let $JOBS="c:/honda/MyDocument/Memo/JOBS/"
let $MTG="c:/honda/MyDocument/Memo/MTGMemo/"
let $NV300="c:/honda/MyDocument/Memo/NV300/"
let $WR="c:/honda/MyDocument/Memo/WR/"
let $WORK="c:/c_honda/MyDocument/FY2016"
let $VIM_DIR="c:/honda/Program/vim73-kaoriya-win32"
let $MYVIMRC="c:/honda/Program/vim73-kaoriya-win32/_vimrc"
let $VIMPLUGIN="C:/honda/Program/vim73-kaoriya-win32/vim73/bundle/yossypowers/plugin"
let $VIMSYNTAX="C:/honda/Program/vim73-kaoriya-win32/vim73/bundle/yossypowers/syntax"
let $TMPMTG="c:/honda/MyDocument/Memo/Template/MTG.txt"
let $S_DEBUG="C:\honda\Program\vim73-kaoriya-win32\vim73\bundle\yossypowers\syntax\debug.vim"

"---------------------------------------------------------------------------
" 色指定
"---------------------------------------------------------------------------
colorscheme zellner

":echo $WORK_DIR 確認
"
elseif has("win32unix")
" Cygwin固有の設定
elseif has("win32")
" 32bit_windows固有の設定"}}}
"---------------------------------------------------------------------------
"環境変数( windows )
"---------------------------------------------------------------------------"{{{
let $MEMO="c:/honda/MyDocument/Memo"
let $TIPS="c:/honda/MyDocument/Memo/tips-dev/"
let $TIPSHDVC="C:\honda\MyDocument\Memo\tips-dev\tips_vc1600.txt"
let $TIPSVIM="C:\honda\MyDocument\Memo\tips-dev\tips_vim.txt"
let $JOB="c:/honda/MyDocument/Memo/JOBS/"
let $ETC="c:/honda/MyDocument/Memo/etc/"
let $JOBS="c:/honda/MyDocument/Memo/JOBS/"
let $MTG="c:/honda/MyDocument/Memo/MTGMemo/"
let $NV300="c:/honda/MyDocument/Memo/NV300/"
let $WR="c:/honda/MyDocument/Memo/WR/"
let $WORK="c:/c_honda/MyDocument/FY2016"
let $VIM_DIR="c:/honda/Program/vim73-kaoriya-win32"
":let $VIMRC=${VIM_DIR}/_vimrc
let $MYVIMRC="c:/honda/Program/vim73-kaoriya-win32/_vimrc"
let $VIMPLUGIN="C:/honda/Program/vim73-kaoriya-win32/vim73/bundle/yossypowers/plugin"
let $VIMSYNTAX="C:/honda/Program/vim73-kaoriya-win32/vim73/bundle/yossypowers/syntax"
"let $ISSUE="C:\c_honda\MyDocument\DocDev\110_Pro4HDVC_V.4.0\911_不具合対応"
let $HOME="c:/honda/.vim/"
let $TMPMTG="c:/honda/MyDocument/Memo/Template/MTG.txt"
"let $CS="c:/c_honda/MyDocument/DocDev/115_Pro4HDVC_V.4.25/B00_V425リリース後_問合せ対応"
let $S_DEBUG="C:\honda\Program\vim73-kaoriya-win32\vim73\bundle\yossypowers\syntax\debug.vim"

"--------------------------------------------------
"外部grep
"https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-grep#TOC-Windows-grep-
"

set grepprg=c:/honda/program/cygwingrep/bin/grep\ -nH
":echo $WORK_DIR 確認
""}}}
"----------------------------------------------------------------------------------"
" End of PC dependent setting
"----------------------------------------------------------------------------------"
endif

"---------------------------------------------------------------------------
"ファイルを開いたディレクトリに移動する
"---------------------------------------------------------------------------
:au BufEnter * execute ":lcd " . expand("%:p:h")

"--------------------------------------------------------------------------
"ファイルを開く時にファイル名の補完をする
"--------------------------------------------------------------------------
:set wildmode=list:longest

"--------------------------------------------------------------------------
"ファイルを開く時にtabで開く
"　複数ファイルではＮＧ
"--------------------------------------------------------------------------

"autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

" バッファを使わない bwでバッファを閉じないと駄目
"autocmd BufReadPost * tab ball

" タブを開く/閉じる
"nnoremap <C-T> :tabnew <CR>
nnoremap Alt-F4 :q <CR>

" 現在の場所でgrep
" <cword> 現在の単語をあらわす
" vimgrep 結果の移動 F3で次へ F2で前へ
nnoremap <F2> :cp<CR>
nnoremap <F3> :cn<CR>
nnoremap <F7> :cp<CR>
nnoremap <F8> :cn<CR>
nnoremap <F4> :vimgrep <cword> **/*.cpp **/*.c **/*.h \| cw 
nnoremap <F5> :vimgrep <cword> **/* \| cw 
" 裏バッファ
nnoremap <F6> :vimgrep /xxx/j # | cwin 
nnoremap <F9> :NERDTree <cr>

"リターンでファイルを開く　誤って開くことが多いのでコメントアウト
"nnoremap <silent> <cr> :silent exe 'Utl'<cr><cr>

"CapsをCntに変更に伴いCnt-jをESCに変更　2013/02/20 08:52:28
inoremap <C-j> <ESC>
inoremap <C-k> <ESC>

nnoremap <C-j> <ESC>

"打ち間違いが多いので変更
"Cnt-G -> shift->G
nnoremap <C-g> <S-g>

" 全部を選択
nnoremap <C-a> gg<S-v><S-g>

" 2012/10/09 14:24:05
" jj を<ESC>
"
"
inoremap <C-c> <ESC>
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

"\{, \(で括弧を入力して編集モードに変更 2013/02/21 18:27:27
noremap <Leader>{ i{}<ESC>i
noremap <Leader>( i()<ESC>i

"文字コード、改行コード
"todo マクロの改行コードが不正となってしまう
"ファイル名も化ける・・・
"恐らく２バイトコード対応が必要
"現状はcp932となっている
"2016/02/05 19:32:35 変更してみた。todo-yossy.vimはファイル・タイプを変更済み
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,cp932
":set fileformats=unix,dos,mac


"grep-----------------------------------------------
"毎回「| cw」を付けるのが面倒な場合は、以下のautocmd設定で自動化することも可能。
au QuickfixCmdPost vimgrep cw

" CTRL-hjklでウィンドウ移動
" 2015/07/13 20:13:53 C-jklmはかぶるので変更する sjkhlに変更
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" nnoremap <C-h> <C-w>h
 nnoremap [chwin]   <nop>
 nmap    f [chwin]
 
 nnoremap  [chwin]j <C-w>j
 nnoremap  [chwin]k <C-w>k
 nnoremap  [chwin]l <C-w>l
 nnoremap  [chwin]h <C-w>h


" Arrowで分割ウィンドウ拡大
nnoremap <Up> <C-w>+
nnoremap <Left> <C-w><
nnoremap <Down> <C-w>-
nnoremap <Right> <C-w>>

" space でページ移動
"nnoremap <Space> <C-f>
"nnoremap <S-Space> <C-b>

" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする "
"imap <C-K> <ESC>"*pa

" インサートモードでもhjklで移動（Ctrl押すけどね）
"imap <C-j> <Down>
"imap <C-k> <Up>
""imap <C-h> <Left>
"imap <C-l> <Right>


"insertモードを抜けるとIMEオフ
set imdisable

set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
set vb t_vb= " ビープをならさない

"pathogen の有効化

if has("win32") || has("win64")
	" 32bit_windows固有の設定
	execute pathogen#infect()
	" pathogen.vim のために一時的にOFFにする
	filetype off
	" pathogen.vim を有効にする
	call pathogen#runtime_append_all_bundles()
	call pathogen#helptags()
	" helpfileの設定
	set helpfile=$VIMRUNTIME/doc/help.txt
	" filetypeの有効化 
	filetype on
endif
"タグの作成
noremap ctag :! ctags -R <CR>
noremap gtag :! gtags -v <CR>

"	関数定義に移動　cntrl+] (もう一回ならC-i) 
"	元に戻るのは    cntrl + o (C-o)
"	戻るにはcntrl + t (tmuxとかぶる）
"	関数単位で移動 ]], [[, 
"	別ファイルで開きたければ C-w } (プレビューで開く）
"	閉じるのはC-w C-z or :pc

"タグ戻る
nnoremap <C-]> :pop 

"----------------------------------------------------------------------------------
"ラインの挿入 2014/03/07 12:17:04
" 改行して-を繰り返し挿入して改行
"----------------------------------------------------------------------------------
nnoremap <Space>ll o<ESC>82i-<ESC>o<ESC>

"---------------------------------------------------------------------------------
"unite	
"---------------------------------------------------------------------------------
"unite prefix key.
nnoremap [unite] <Nop>
nmap <Space>f [unite]
 
"unite general settings
"インサートモードで開始
let g:unite_enable_start_insert = 1
"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 200

".uniteファイルの保存場所！ 重要!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
"これを設定しないと$HOME ー＞Zドライブなどになっており遅くなる原因！！！
let g:unite_data_directory='c:\honda\.vim\.unite'

"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''
 
"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"レジスタ一覧
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"uniteを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  "ESCでuniteを終了
  nmap <buffer> <ESC> <Plug>(unite_exit)
  "入力モードのときjjでノーマルモードに移動
  imap <buffer> jj <Plug>(unite_insert_leave)
  "入力モードのときctrl+wでバックスラッシュも削除
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
  "ctrl+jで縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
  "ctrl+jで横に分割して開く
  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
  "ctrl+oでその場所に開く
  nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
  inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
endfunction"}}}

" 例
let g:unite_source_menu_menus = {
\   "shortcut" : {
\       "description" : "sample unite-menu",
\       "command_candidates" : [
\           ["edit vimrc", "edit $MYVIMRC"],
\           ["edit gvimrc", "edit $MYGVIMRC"],
\           ["unite-file_mru", "Unite file_mru"],
\           ["Unite Beautiful Attack", "Unite -auto-preview colorscheme"],
\           ["unite-output:message", "Unite output:message"],
\       ],
\   },
\}

" 呼び出しコマンド
" :Unite menu:shortcut
"------------------------------------------------------------------------------------
"カレントディレクトリ移動
"<SP> CD
"------------------------------------------------------------------------------------
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>') 
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif

    if a:bang == ''
        pwd
    endif
endfunction

" Change current directory.
nnoremap <silent> <Space>cd :<C-u>CD<CR>

"------------------------------------------------------------------------------------
" neocomplcache 補完機能
"------------------------------------------------------------------------------------
"let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化


"------------------------------------------------------------------------------------
"カーソルカスタマイズ 2013/04/05 18:12:23
"どうもブルーにならないので没
"------------------------------------------------------------------------------------
"set cursorline  "カーソル行をライン          
"highlight CursorLine guibg=white gui=underline
"set cursorline  "カーソル行をライン          
"highlight CursorLine ctermfg=Blue
"
"インサートモードに入った時にカーソル行の色を変更する
"augroup vimrc_change_cursorline_color
"  autocmd!
"  " インサートモードに入った時にカーソル行の色をブルーグリーンにする
"  autocmd InsertEnter * highlight CursorLine ctermbg=24 guibg=#005f87 | highlight CursorColumn ctermbg=24 guibg=#005f87
"  " インサートモードを抜けた時にカーソル行の色を黒に近いダークグレーにする
"  autocmd InsertLeave * highlight CursorLine ctermbg=236 guibg=#303030 | highlight CursorColumn ctermbg=236 guibg=#303030
"augroup END
"
"
"------------------------------------------------------------------------------------
" vimrc に 設定できないのは以下に設定されているから？
"C:\honda\Program\vim73-kaoriya-win32\vim73\filetype.vim
au BufNewFile,BufRead *.txt,*.text setf txt
"------------------------------------------------------------------------------------
"
"
"yankring.vim
"
let g:yankring_history_dir = expand('$HOME')
let g:yanking_hitory_file = '.yankring_history'
let g:yanking_max_history = 18
let g:yankring_enabled = 1

"畳み込みの有効化 {{{ hoge }}}
"zopen,zclose, zM: close all, zR:Open all
"za:toggle  zf, zm/zr
set foldmethod=marker 

" space is already mapped for Easy motion!
" folding
"
noremap <Space>o zo <Esc>
noremap <Space>c zc <Esc>

noremap <Space>m zM
noremap <Space>r zR

noremap <Space>j zj
noremap <Space>k zk
noremap <Space>n ]z
noremap <Space>p [z
noremap <Space>h zc
noremap <Space>a za
noremap <Space>i zMzv
noremap <Space>f zf

"open-browzer
nmap gW <Plug>(openbrowser-open)

"-----------------------------------------------------------------------------------
"ファイルリネーム :e Rename newfilename 2013/06/21 11:46:50
"http://vim-users.jp/2009/05/hack17/
":file newfilename.txt // 編集中のバッファの保存先を変更 :w で保存
":call delete(expand('#')) //前の編集ファイルを削除
"-----------------------------------------------------------------------------------
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))


"--------------------------------------------------------
"EASY MOTION
" Space + h(↓） j(上）
" E + h,j,k,l
"--------------------------------------------------------

	" ホームポジションに近いキーを使う
	let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
	" 「'」 + 何かにマッピング
	"let g:EasyMotion_leader_key="'"
	"let g:EasyMotion_leader_key="<Space>"
	let g:EasyMotion_leader_key="E"
	" 1 ストローク選択を優先する
	let g:EasyMotion_grouping=1
	" カラー設定変更
	hi EasyMotionTarget ctermbg=none ctermfg=red
	hi EasyMotionShade  ctermbg=none ctermfg=blue

if has("win32") || has("win64")
	" ----------------------------------------------------------------------------------"
	"  VIM高速起動　vim=singleton 2015/01/26 18:48:03
	"  http://d.hatena.ne.jp/tyru/20130430/vim_resident
	"  https://github.com/thinca/vim-singleton
	" ----------------------------------------------------------------------------------"
		call singleton#enable()
endif

" If starting gvim && arguments were given
" (assuming double-click on file explorer)
if has('gui_running') && argc()
    let s:running_vim_list = filter(
    \   split(serverlist(), '\n'),
    \   'v:val !=? v:servername')
    " If one or more Vim instances are running
    if !empty(s:running_vim_list)
        " Open given files in running Vim and exit.
        silent execute '!start gvim'
        \   '--servername' s:running_vim_list[0]
        \   '--remote-tab-silent' join(argv(), ' ')
        qa!
    endif
    unlet s:running_vim_list
endif

" ----------------------------------------------------------------------------------"
"  /の検索を頁末で止める 折り返し検索の禁止
" ----------------------------------------------------------------------------------"
:set nowrapscan

"----------------------------------------------------------------------------------
"　ファイルの検索パス
"----------------------------------------------------------------------------------
"let &path +="c:/honda/MyDocument/Memo"
"windowsではNG
"
"
"
"----------------------------------------------------------------------------------"
"正規表現の\を省略
" ----------------------------------------------------------------------------------"

nnoremap /  /\v


"----------------------------------------------------------------------------------
" tagbar
" https://github.com/majutsushi/tagbar
"----------------------------------------------------------------------------------
"
"#nmap <F10> :TagbarToggle<CR>
nmap <F10> :TrinityToggleAll<CR>

" ----------------------------------------------------------------------------------"
"  Evervim
"  developer token valid until
"			https://www.evernote.com/api/DeveloperToken.action
"		20 November 2017, 01:22
" https://www.evernote.com/shard/s13/notestore
" ----------------------------------------------------------------------------------"
let g:evervim_devtoken='S=s13:U=17095b:E=15fd8bc902f:C=158810b6348:P=1cd:A=en-devtoken:V=2:H=8adfa003f6d6ec7bbbacb87acd960fd1'

nnoremap ,l :EvervimNotebookList<CR>
nnoremap ,s :EvervimSearchByQuery<Space>
nnoremap ,st :EvervimSearchByQuery<Space> tags:
nnoremap ,c :EvervimCreateNote<CR>
nnoremap ,t :EvervimListTags<CR>

" ----------------------------------------------------------------------------------"
"  dein package manager 2016
"  追加したらインストールコマンド
" :call dein#install()
" ----------------------------------------------------------------------------------"
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('kakkyz81/evervim')
call dein#add('tpope/vim-surround')

" for markdown
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')

call dein#add('vim-scripts/mru.vim')
call dein#add('vim-scripts/YankRing.vim')
call dein#add('vim-scripts/copypath.vim')
call dein#add('vim-scripts/zoom.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('easymotion/vim-easymotion')

"call dein#add('vim-scripts/fontzoom.vim')
"call dein#add('Shougo/unite.vim')


call dein#end()

"----------------------------------------------------------------------------------
" plugin director by myself
"----------------------------------------------------------------------------------
set runtimepath+=~/.vim/myplugin

"----------------------------------------------------------------------------------
" markdown
" 	previm
"----------------------------------------------------------------------------------
"Previm
let g:previm_open_cmd = 'open -a Safari'
" markdownの折りたたみなし
"let g:vim_markdown_folding_disabled=1

"----------------------------------------------------------------------------------
" ----------------------------------------------------------------------------------"
" Add above here
"----------------------------------------------------------------------------------

" 折りたたみの色をあまり濃くしない
highlight Folded guibg=white guifg=pink

"----------------------------------------------------------------------------------
" カーソル行をアンダーライン
"----------------------------------------------------------------------------------
set cursorline
highlight CursorLine gui=underline guibg=LightGreen

"----------------------------------------------------------------------------------
"gtags key mapping
"
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
"map <C-n> :cn<CR>
"map <C-p> :cp<CR>

"----------------------------------------------------------------------------------"
" httpをオープン
" http://www.google.com
" \ w
" ----------------------------------------------------------------------------------"
function! HandleURI()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
    exec "!explorer \"" . s:uri . "\""
  else
    echo "No URI found in line."
  endif
endfunction

map <silent> <Leader>w :call HandleURI()<CR>
"----------------------------------------------------------------------------------
"
" ----------------------------------------------------------------------------------"
"今日の日付
" :w $TODAY_hogehoge.txt
" ----------------------------------------------------------------------------------"
let $TODAY = strftime('%Y%m%d')

"----------------------------------------------------------------------------------"{{{
" 大文字・小文字を区別しない 
" ignorecaseが効かないので/\cとすると良い
" /\c
"----------------------------------------------------------------------------------"}}}
:set ignorecase

"----------------------------------------------------------------------------------
" file type　を自動設定
"----------------------------------------------------------------------------------
au BufNewFile,BufRead *.txt			setf yossy_txt
au BufNewFile,BufRead *.ytxt			setf yossy_txt
au BufNewFile,BufRead *debug_log			setf debug
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *vimrc			setf vim

