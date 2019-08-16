@echo off

cd %~dp0

rem レビュー用URL
set /P USR_INPUT_STR="レビュー用URLを入力してください: "

echo バッチファイルを実行します。
python note-review.py %USR_INPUT_STR%

if %ERRORLEVEL% NEQ 0 goto error_handler

echo review.htmlの出力が完了しました。
goto exit_handler

:error_handler
echo review.htmlの出力に失敗しました。
rem pause

:exit_handler
pause

