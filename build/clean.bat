@rem 关闭命令回显，执行命令时，不显示命令本身
@echo off

rem 获取当前脚本路径
set CUR_PATH=%cd%

rem 获取项目的路径
set PROJECT_PATH=%CUR_PATH%\..

rem 获取buildcache的路径
set buildcache_path=%CUR_PATH%\..\buildcahce

rem 获取lib的路径
set lib_path=%CUR_PATH%\..\lib

rem 获取lib的路径
set output_path=%CUR_PATH%\..\output

if "%1" == "" (
    if exist %buildcache_path% (
        rd /s /q %buildcache_path%
    )
) else if "%1" == "all" (
    if exist %buildcache_path% (
        rd /s /q %buildcache_path%
    )
    if exist %lib_path% (
        rd /s /q %lib_path%
    )
    if exist %output_path% (
        rd /s /q %output_path%
    )
)
