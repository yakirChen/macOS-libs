call plug#begin('~/.vim/plugged')

" Plug 'sheerun/vim-polyglot'
" Plug 'maralla/completor.vim'
Plug 'Shougo/vimproc.vim'
Plug 'idanarye/vim-vebugger'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'cespare/vim-toml'
Plug 'itchyny/lightline.vim'
Plug 'fholgado/minibufexpl.vim'
"Plug 'Yggdroot/indentLine'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tommcdo/vim-lion'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'yianwillis/vimcdoc'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
"if has('nvim')
"  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/defx.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()
"call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
"Glaive codefmt plugin[mappings]
"Glaive codefmt google_java_executable="java -jar /Users/yakir/local/jars/google-java-format.jar"
