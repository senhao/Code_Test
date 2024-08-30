# 定义源文件变量
set(SNAKE_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/main.c
)

# 生成可执行文件，并指定源文件
add_executable(Snake ${SNAKE_SOURCES})

# 可执行文件链接库
target_link_libraries(Snake
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/../../lib/libhello.a
)

# 可执行文件添加头文件搜索路径
target_include_directories(Snake
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/../1/include
)





