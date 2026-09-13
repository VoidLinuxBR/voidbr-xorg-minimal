#!/bin/sh

# 1. Carrega o tema escuro no X11 primeiro
[ -f "$HOME/.Xresources" ] && xrdb -merge "$HOME/.Xresources"

# 2. Abre os dois primeiros terminais em segundo plano (&)
xterm -geometry 80x24+0+0 &
xterm -geometry 80x24+520+0 &

# 3. O terceiro xterm roda com exec para manter a sessão gráfica ativa
exec xterm -geometry 80x24+0+360