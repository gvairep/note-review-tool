@echo off

cd %~dp0

rem ���r���[�pURL
set /P USR_INPUT_STR="���r���[�pURL����͂��Ă�������: "

echo �o�b�`�t�@�C�������s���܂��B
python note-review.py %USR_INPUT_STR%

if %ERRORLEVEL% NEQ 0 goto error_handler

echo review.html���o�͂��������܂����B
goto exit_handler

:error_handler
echo review.html���o�͂Ɏ��s���܂����B
rem pause

:exit_handler
pause

