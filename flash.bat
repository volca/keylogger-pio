pio run -t upload -d 32u4-blank
ping -n 1 127.0.0.1
rem flash esp32 and 32u4
for /f "delims=" %%i in ('python tools\flasher_detect.py') do (
    set upload_port=%%i
)
if %errorlevel% neq 0 goto :end
pio run -t upload --upload-port=%upload_port% -d esp32
pio run -t upload -d 32u4
:end

echo "end"