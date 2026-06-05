@echo off
title Salvar Projeto Ghost
echo ===========================================
echo   VERIFICANDO O QUE MUDOU...
echo ===========================================
git status
pause

echo ===========================================
echo   PREPARANDO O COMMIT...
echo ===========================================
git add .
set /p "msg=Digite o nome DESTE salvamento: "
if "%msg%"=="" set msg=Update Rapido %date% %time%
git commit -m "%msg%"

echo ===========================================
echo   ENVIANDO PARA O GITHUB...
echo ===========================================
git push origin main

if %errorlevel% neq 0 (
    echo.
    echo [ERRO] O PUSH FALHOU! Alguma coisa travou na internet ou no Git.
    echo Tente rodar 'git pull origin main' antes de tentar de novo.
) else (
    echo.
    echo [SUCESSO] Tudo subiu para o GitHub!
)

pause