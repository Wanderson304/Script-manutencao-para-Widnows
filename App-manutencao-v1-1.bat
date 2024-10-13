
@echo off

REM =======================================================================================
REM                          CONFIGURAÇÕES DE IDIOMAS E ENTRADAS
REM =======================================================================================

REM Muda o titulo da Janela do CMD
Title: Windows Initial Maintenance V.1.1

REM Configura o tamanho da tela
MODE CON LINES=25 COLS=75

color 2

REM Permite usar acentos e caracteres especiais
REM change CHCP to UTF-8
CHCP 65001

cls

REM =======================================================================================
REM                         EXECUÇÃO DE TAREFAS
REM =======================================================================================

REM limpeza da pasta %temp%

IF EXIST c:\windows\temp\ del /f /s /q c:\windows\temp\ 
DEL /f /s /q temp\ 

cls

@echo =================================================================            
@echo.            Script: Windows Initial Maintenance V.1.1
@echo.             Versão: App-manutencao-v1.1          
@echo.            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================
@echo.

@echo Um momento. Limpando a pasta "temp"...
timeout /t 10 >nul
cls

REM limpeza da pasta %temp% 

IF EXIST c:\windows\%temp%\ del /f /s /q c:\windows\%temp%\
DEL /f /s /q %temp%\ 

cls

@echo =================================================================            
@echo            Script: Windows Initial Maintenance V.1.1
@echo            Versão: App-manutencao-v1.1          
@echo            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================
@echo.

@echo Um momento. Limpando a pasta "%temp%"...
timeout /t 10 >nul

cls

REM limpeza da pasta prefetch

IF EXIST c:\windows\prefetch\ del /f /s /q c:\windows\prefetch\ 
DEL /f /s /q Prefetch\ 

cls

@echo =================================================================            
@echo            Script: Windows Initial Maintenance V.1.1
@echo            Versão: App-manutencao-v1.1          
@echo            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================
@echo.

@echo.

echo Um momento. Limpando a pasta "prefetch"...
timeout /t 10 >nul

cls

REM =======================================================================================
REM                         INICIAR PROGRAMAS
REM =======================================================================================

start outlook.exe
start excel.exe
start https://www.google.com

cls

color 17 

@echo.
@echo =================================================================            
@echo            Script: Windows Initial Maintenance V.1.1
@echo            Versão: App-manutencao-v1.1          
@echo            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================

@echo.

@echo Olá %username% acabamos de realizar uma manutenção básica em seucomputador:
@echo Limpamos o conteúdo das seguintes pastas:
@echo Temp, Temp% e Prefech
@echo.
@echo Aproveitamos e iniciamos os seguintes aplicativos:

echo.

@echo - Google Chrome
@echo - Microsoft Excel
@echo - Microsoft Outlook

@echo.

echo Essa tela será fechada em 10 segundos ou aperte ENTER para SAIR ! 

timeout /t 10 >nul
exit


