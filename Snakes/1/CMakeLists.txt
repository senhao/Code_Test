# 创建生成静态库
add_library(hello STATIC "")

# 指定静态库的源文件，包括 .c, .cpp, 和 .h 文件（即源文件和头文件）
# 帮助 CMake 知道哪些文件应该被编译成目标的一部分
# 头文件不会被编译，它们的存在告诉 CMake 这些文件是目标的一部分，并且影响目标的可见性
target_sources(hello 
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/src/hello.c
    PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/include/hello.h
)

# 设置静态库的头文件搜索路径
target_include_directories(hello
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/include
)

