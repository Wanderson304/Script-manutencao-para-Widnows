
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

color 17 

REM =======================================================================================
REM                         Opções
REM =======================================================================================

@echo =================================================================            
@echo.            Script: Windows Initial Maintenance V.1.1
@echo             Versão: App-manutencao-v1.1          
@echo.            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================
@echo.

@echo Olá %username% !
@echo.

@echo Escolha um numero, em seguida aperte Enter:
@echo.

ECHO 1 - Instalar Script
ECHO 2 - Remover Script
ECHO 3 - Sair

SET /P escolha= " "

IF %escolha%==1 GOTO :instalar
IF %escolha%==2 GOTO :desistalar
IF %escolha%==3 GOTO :exit

pause


REM =======================================================================================
REM                         Instalação
REM =======================================================================================

:instalar

set "oriegem=C:\Users\%username%\Downloads"
set "destino_pasta_startup=C:\Users\%username%\AppData\Roaming\Microsoft\windows\start menu\programs\startup"


cd %oriegem%

cd App-manutencao-v-1-1

xcopy /Y App-manutencao-v1-1.bat "%destino_pasta_startup%" 

cls

color 17 

@echo =================================================================            
@echo.            Script: Windows Initial Maintenance V.1.1
@echo             Versão: App-manutencao-v1.1          
@echo.            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================

@echo.
@echo.

echo Instalação foi realizada com sucesso
@echo.
echo Essa tela será fechada em 10 segundos ou aperte ENTER para SAIR ! 

timeout /t 10 >nul
exit

:desistalar

REM =======================================================================================
REM                         Desistalação
REM =======================================================================================

set "destino_pasta_startup=C:\Users\%username%\AppData\Roaming\Microsoft\windows\start menu\programs\startup"

cd "%destino_pasta_startup%"

del App-manutencao-v1-1.bat

cls

color 17 

@echo =================================================================            
@echo.            Script: Windows Initial Maintenance V.1.1
@echo             Versão: App-manutencao-v1.1          
@echo.            Contato: wanderson.silva@contactpoint.com.br
@echo =================================================================

@echo.
@echo.

echo Certo o Script foi removido com sucesso do seu computador...
@echo.
echo Essa tela será fechada em 10 segundos ou aperte ENTER para SAIR ! 


timeout /t 10 >nul
exit

:exit
exit



