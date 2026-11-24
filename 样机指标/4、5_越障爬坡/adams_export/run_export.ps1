# 用后台 Adams View 把 .bin 导出为 .adm 和 .cmd，不影响已打开的 Adams 窗口。
# 用法：.\run_export.ps1 -Bin <模型.bin> -Model <模型名，不带点> -Out <输出目录>
param(
    [Parameter(Mandatory)][string]$Bin,
    [Parameter(Mandatory)][string]$Model,
    [Parameter(Mandatory)][string]$Out
)
$adams = 'D:\ADAMS_~1\bin\adams2024_1.bat'
New-Item -ItemType Directory -Force $Out | Out-Null
Copy-Item $Bin (Join-Path $Out 'm.bin') -Force
@"
file binary read file_name="m.bin"
file adams_data_set write file_name="m_out.adm" model_name=.$Model
file command write file_name="m_out_cmd.cmd" entity_name=.$Model
"@ | Set-Content (Join-Path $Out 'export.cmd') -Encoding ascii
Set-Location $Out
# adams 批处理会在当前目录生成临时 bat，需要把当前目录加入 PATH
$env:PATH = (Get-Location).Path + ';' + $env:PATH
& cmd.exe /c "$adams aview ru-standard b export.cmd" | Out-Null
Get-Content aview.log -Tail 10
