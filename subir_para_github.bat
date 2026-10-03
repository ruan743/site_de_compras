@echo off
chcp 65001 > nul
echo ========================================================
echo       SUBIR PROJETO GAMELOCK SHOP PARA O GITHUB
echo ========================================================
echo.

:: Verificar se o Git está instalado
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERRO] O Git não foi encontrado no seu computador!
    echo Por favor, instale o Git pelo link: https://git-scm.com/download/win
    echo Após instalar, feche e abra este script novamente.
    pause
    exit /b
)

:: Solicitar a URL do repositório
set /p REPO_URL="Cole aqui o link do seu repositório no GitHub: "

if "%REPO_URL%"=="" (
    echo [ERRO] Você precisa colar o link do repositório!
    pause
    exit /b
)

echo.
echo [1/4] Inicializando o Git local...
git init

echo [2/4] Adicionando todos os arquivos organizados...
git add .

echo [3/4] Criando o commit...
git commit -m "Estrutura profissional GameLock Shop finalizada"

echo [4/4] Conectando ao repositório remoto e enviando arquivos...
git branch -M main
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git push -u origin main --force

echo.
echo ========================================================
echo       PROCESSO CONCLUÍDO COM SUCESSO!
echo ========================================================
pause
