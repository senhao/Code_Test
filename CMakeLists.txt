# 指定CMake最低版本为3.20
cmake_minimum_required(VERSION 3.20)

# 指定CMake工程名和语言1
project(CODE_TEST LANGUAGES "C")

# 启用对C17标准的支持
set(CMAKE_C_STANDARD 17)

# 显式要求指明支持C标准
set(CMAKE_C_STANDARD_REQUIRED True)

# 启用对C的外部支持
set(CMAKE_C_EXTENSIONS True)

# 设置静态库的输出路径
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/lib)

# 设置动态库的输出路径
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/output)

# 设置可执行文件的输出路径
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/output)

# include_directories(
#     ${CMAKE_CURRENT_LIST_DIR}/Snakes/1/include
# )

# 寻找子目录下的CMakeLists
add_subdirectory(Snakes)
