@echo off
CHCP 1252
cls
title RPG Aventura
set /p nome="Digite seu nome de jogador: "
set classe=Guerreiro
set nivel=1
set xp=0
set dinheiro=100
set vida=100

:menu
title RPG Aventura
cls
echo ========= RPG Aventura =========
echo Jogador: %nome%
echo Classe: %classe%
echo Nível: %nivel% (XP: %xp%)
echo Vida: %vida%
echo Dinheiro: %dinheiro%
echo ---------------------------------
echo 1. Explorar Cidades
echo 2. Lutar contra inimigos
echo 3. Loja
echo loja para ir numa loja super avanssada
echo 4. Missões
echo 5. Sair
echo 6. códigos do jogo
echo =================================
set /p escolha="Escolha uma opção: "

if "%escolha%"=="1" goto cidade
if "%escolha%"=="2" goto batalha
if "%escolha%"=="3" goto loja
if "%escolha%"=="loja" goto y
if "%escolha%"=="4" goto missao
if %escolha%==add goto add
if %escolha%==sectret-sta-code-u+2620 goto pola
if %escolha%==hack goto hacker
if %escolha%==dinheiro goto fgj
if %escolha%==xp goto fgi
if %escolha%==nome goto bn
if %escolha%==classe goto bk
if %escolha%==nivel goto bz
if %escolha%==vida goto bm
if "%escolha%"=="5" exit
if %escolha%==6 goto ck
goto menu

:cidade
cls
echo ?? Bem-vindo à cidade!
echo Aqui você pode conversar com NPCs e visitar a loja.
echo 1. Falar com o Guardião
echo 2. Ir para a loja
echo 3. Voltar
set /p escolha="Escolha seu destino: "

if "%escolha%"=="1" echo ?? Guardião: 'Olá, %nome%! Proteja-se bem antes de explorar a região.'
if "%escolha%"=="2" goto loja
pause
goto menu
:batalha
set vida_inimigo=50
cls
goto uiuui
:uiuui
cls
echo ?? Um inimigo apareceu!
echo Vida do inimigo: %vida_inimigo%
echo ---------------------------------
echo 1. Atacar
echo 2. Fugir
set /p escolha="Escolha sua ação: "

if "%escolha%"=="1" (
    set /a vida_inimigo-=20
    echo ?? Ataque bem-sucedido! Vida do inimigo: %vida_inimigo%
    if %vida_inimigo% LEQ 0 (
        echo ?? Você venceu! Ganhou XP e dinheiro!
        set /a xp+=50
        set /a dinheiro+=30
        if %xp% GEQ 100 set /a nivel+=1
        pause
        goto menu
    )
    pause
    goto uiuui
)
if "%escolha%"=="2" (
    echo ?? Você fugiu do combate.
    pause
    goto menu
)
:loja
cls
echo ?? Bem-vindo à loja! Tens %dinheiro% moedas.
echo 1. Poção de Vida (30 moedas)
echo 2. Espada Afiada (50 moedas)
echo 3. Voltar
set /p escolha="Escolha um item para comprar: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 30 (
        echo ?? Compraste uma Poção de Vida!
        set vida=100
        set /a dinheiro-=30
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 50 (
        echo ?? Compraste uma Espada Afiada! Ataques mais fortes!
        set dano_extra=10
        set /a dinheiro-=50
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto menu
:missao
echo tenta adevinhar o nubro aleatório de 0 a 10
set /p nubro= numbro: 
set /a q= %random% %% 10 +0
echo o numbro era: %q%
echo ganhaste 100 de dinheiro!!!
set /a dinheiro+=100
pause
goto menu
:add
cls
color 02
title o código do jogo!!!
echo ganhaste mil euros por teres posto o código secreto!!! a se quiseres ter 1020 pons o código sectret-sta-code-u+2620
set /a dinheiro+=1000
pause
color 07
goto menu
:pola
title o código sectret-sta-code-u+2620
cls
color 17
echo ganhaste 1020 de dinheiro por teres posto isso!!!
set /a dinheiro+=1020
pause
color 07
goto menu
:hacker
cd C:/Windows/System32/
cls
title hack
color 02
set /p windows= usuario da microsoft: 
dir/s
pause
cls
echo your system32 is hacked
pause
cd C:\Users\%windows%\Desktop\
color 07
goto menu
:fgj
cls
title definições top secretas do dinheiro
color 04
set /p df= defenir o dinheiro para: 
set /a dinheiro=%df%
cls
echo o dinheiro agora %nome%, está defenido a %dinheiro%
pause
color 07
goto menu
:fgi
cls
title definições top secretas do xp
color 04
set /p d1= defenir o xp para: 
set /a xp=%d1%
echo o xp agora %nome%, está defenido a %xp%
pause
color 07
goto menu
:bn
cls
title definições top secretas do nome
color 04
set /p d2= defenir o nome para: 
set nome=%d2%
echo o nome agora está defenido a %nome%
pause
color 07
goto menu
:bk
cls
title definições top secretas da classe
color 04
set /p d3= defenir a classe para: 
set classe=%d3%
echo a classe agora está defenida a %classe%
pause
color 07
goto menu
:bz
cls
title definições top secretas do nivel
color 04
set /p d4= defenir o nivel para: 
set nivel=%d4%
echo o nivel agora está defenido a %nivel%
pause
color 07
goto menu
:bm
cls
title definições top secretas da vida
color 04
set /p d5= defenir a vida para: 
set vida=%d5%
echo a vida agora está defenido a %vida%
pause
color 07
goto menu

:ck
cls
color 02
title os códigos:
echo ----------------=códigos=--------------------------
echo add para por 1000 de dinheiro
echo hack para fazer de conta que ouve um hack
echo sectret-sta-code-u+2620 para ganhar 1020 de dinheiro
echo dinheiro para definir o dinheiro a o que puzeste
echo xp para definir o xp a o que puzeste
echo classe para definir a classe para o que pozeste
echo nome para defenir o nome para o que puzeste
echo nivel para defenir o nivel para o que puzeste
echo vida para defenir a vida para o que puzeste
echo ----------------------------------------------------
pause
color 07
goto menu
:y
title Loja Avançada de RPG
set dinheiro=200
set arma=Nenhuma
set armadura=Sem proteção
set magia=Sem poderes
cls
echo ?? Tens %dinheiro% moedas.
echo ==========================
echo ?? Bem-vindo à Mega Loja de RPG!
echo Escolha uma categoria:
echo 1. Armas
echo 2. Armaduras
echo 3. Magias
echo 4. Poções
echo 5. Upgrades
echo 6. Sair
echo ==========================
set /p escolha="Digite a categoria desejada: "

if "%escolha%"=="1" goto armas
if "%escolha%"=="2" goto armaduras
if "%escolha%"=="3" goto magias
if "%escolha%"=="4" goto pocoes
if "%escolha%"=="5" goto upgrades
if "%escolha%"=="6" goto menu
goto y

:armas
cls
echo ?? Escolha uma arma:
echo 1. Espada de Aço (50 moedas)
echo 2. Machado Gigante (80 moedas)
echo 3. Cajado Mágico (90 moedas)
echo 4. Voltar
set /p escolha="Digite o número do item: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 50 (
        echo ?? Compraste a Espada de Aço!
        set arma=Espada de Aço
        set /a dinheiro-=50
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 80 (
        echo ?? Compraste o Machado Gigante!
        set arma=Machado Gigante
        set /a dinheiro-=80
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="3" (
    if %dinheiro% GEQ 90 (
        echo ?? Compraste o Cajado Mágico!
        set arma=Cajado Mágico
        set /a dinheiro-=90
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto y

:armaduras
cls
echo ??? Escolha uma armadura:
echo 1. Armadura Leve (40 moedas)
echo 2. Armadura Média (70 moedas)
echo 3. Armadura Pesada (100 moedas)
set /p escolha="Digite o número do item: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 40 (
        echo ??? Compraste a Armadura Leve!
        set armadura=Armadura Leve
        set /a dinheiro-=40
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 70 (
        echo ??? Compraste a Armadura Média!
        set armadura=Armadura Média
        set /a dinheiro-=70
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="3" (
    if %dinheiro% GEQ 100 (
        echo ??? Compraste a Armadura Pesada!
        set armadura=Armadura Pesada
        set /a dinheiro-=100
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto y

:magias
cls
echo ?? Escolha uma magia:
echo 1. Bola de Fogo (60 moedas)
echo 2. Raio Congelante (80 moedas)
echo 3. Invocação Sombria (120 moedas)
set /p escolha="Digite o número do item: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 60 (
        echo ?? Aprendeste Bola de Fogo!
        set magia=Bola de Fogo
        set /a dinheiro-=60
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 80 (
        echo ?? Aprendeste Raio Congelante!
        set magia=Raio Congelante
        set /a dinheiro-=80
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="3" (
    if %dinheiro% GEQ 120 (
        echo ??? Aprendeste Invocação Sombria!
        set magia=Invocação Sombria
        set /a dinheiro-=120
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto y

:pocoes
cls
echo ?? Escolha uma poção:
echo 1. Poção de Vida (20 moedas)
echo 2. Poção de Mana (30 moedas)
set /p escolha="Digite o número do item: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 20 (
        echo ?? Compraste Poção de Vida!
        set pocoes=Vida
        set /a dinheiro-=20
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 30 (
        echo ?? Compraste Poção de Mana!
        set pocoes=Mana
        set /a dinheiro-=30
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto y

:upgrades
cls
echo ?? Melhorias disponíveis:
echo 1. Melhorar Espada (+20 de dano) - 40 moedas
echo 2. Melhorar Armadura (+30 de defesa) - 50 moedas
echo 3. Fortalecer Magia (+40% poder) - 60 moedas
set /p escolha="Escolha um upgrade: "

if "%escolha%"=="1" (
    if %dinheiro% GEQ 40 (
        echo ?? Espada melhorada!
        set upgrade=Espada Forte
        set /a dinheiro-=40
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="2" (
    if %dinheiro% GEQ 50 (
        echo ??? Armadura reforçada!
        set upgrade=Armadura Forte
        set /a dinheiro-=50
    ) else (
        echo ?? Moedas insuficientes!
    )
)
if "%escolha%"=="3" (
    if %dinheiro% GEQ 60 (
        echo ?? Magia amplificada!
        set upgrade=Magia Forte
        set /a dinheiro-=60
    ) else (
        echo ?? Moedas insuficientes!
    )
)
pause
goto y

