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
