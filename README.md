On Windows

$env:PATH = "C:\Users\cgorshing\Downloads\lua-language-server-3.13.5-win32-x64\bin;$Env:PATH"

I _think_ for pyright, I have it in the 3.13 distribution. I don't think I have
it in a .venv somewhere that I need to turn on (but that would make sense to do)
$env:PATH = "C:\Users\cgorshing\AppData\Local\Programs\Python\Python313;$env:PATH"
$env:PATH = "C:\Users\cgorshing\AppData\Local\Programs\Python\Python313\Scripts\;$env:PATH"

On MacOS
I brew installed the lua-language-server

For Elixir-ls I cloned the repo and followed the instructions (built/installed with mix)

For pyright -- I can't remember, looks like I used pip, but I don't know if I
used a .venv someplace or just the default asdf-vm Python version  ¯\_(ツ)_/¯

antosha417/nvim-lsp-file-operations - will rename variables (like import statements) when a rename is performed.

:h rtp - this shows the `after` path
In netrw:
  % creates a new file
  d create a new directory

:Ex brings up netrw

:so re-sources config/lua files
:Lazy
:Mason

:checkhealth vim.lsp


:LspRestart

Shift+k for LSP Hover


cib - change inner block - put cursor at beginning of line and cib will remove within the parens. I am seeing some talk about b would be between {} and B would be between ()
const res: any = await requestToken(C_ID, CSEC);

=ap - something with indenting, not sure


:lua ColorMyPencils()



:help sign-intro
The name of the column is `signcolumn`
:help 'signcolumn'
For the W and H in the gutter
W == Warning
H == Hint
I == Info
E == Error
