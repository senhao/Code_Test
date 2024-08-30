@rem 关闭命令回显，执行命令时，不显示命令本身
@echo off 

rem 获取当前脚本路径
set CUR_PATH=%cd%

rem 获取项目的路径
set PROJECT_PATH=%CUR_PATH%\..

rem 获取toolchain.camke的路径
set toolchain_path=%CUR_PATH%\..\cmake\toolchain.cmake

rem 获取buildcache的路径
set buildcache_path=%CUR_PATH%\..\buildcahce

call clean.bat

rem 判断buildcache是否存在，如果不存在则创建
if not exist %buildcache_path% (
    mkdir %buildcache_path%
)

rem 切换至buildcache目录
cd %CUR_PATH%\..\buildcahce

rem 通过cmake构建makefile
cmake .. -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%toolchain_path% -DCMAKE_TARGET_NAME=Snake

rem 通过makefile构建项目
mingw32-make

rem 切换至原脚本路径
cd %CUR_PATH%
