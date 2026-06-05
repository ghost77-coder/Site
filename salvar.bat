@echo off
:: Garante suporte a acentos no terminal
chcp 65001 > nul

echo ====================================================
echo         SISTEMA DE SALVAMENTO MANUAL - GHOST
echo ====================================================
echo.

echo [+] Preparando arquivos...
git add .
echo [OK] Arquivos preparados.
echo.

echo ----------------------------------------------------
echo 👉 Digite o nome do seu save (Mensagem do Commit)
set /p msg="> "
echo ----------------------------------------------------

:: Se você só der ENTER, ele define um nome padrão sem quebrar
if "%msg%"=="" set msg=Update automatico de rotina

echo.
echo [+] Salvando como: "%msg%"
git commit -m "%msg%"
echo.

echo [+] Subindo para o GitHub...
git push origin main
echo.

echo ====================================================
echo [FIM] Processo concluído! Verifique as mensagens acima.
echo ====================================================
echo.
pause