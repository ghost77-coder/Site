@echo off
title Salvar Projeto Ghost
echo ===========================================
echo   PREPARANDO PARA SALVAR...
echo ===========================================

:: Adiciona os arquivos
git add .

:: Obriga a digitar um nome, se deixar vazio ele repete a pergunta
:pedir_nome
set "msg="
set /p "msg=Digite o nome DESTE salvamento: "
if "%msg%"=="" (
    echo.
    echo O nome nao pode ficar vazio, parceiro! Digita ai.
    goto pedir_nome
)

:: Faz o commit com o nome que voce digitou
git commit -m "%msg%"

:: Envia para o GitHub
git push origin main

echo ===========================================
echo   SALVO COM SUCESSO: "%msg%"
echo ===========================================
pause