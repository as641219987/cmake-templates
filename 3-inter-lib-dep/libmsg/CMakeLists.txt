project(Msg)

add_library(msg src/msg.c)

target_include_directories(msg
    PRIVATE "src"
    PUBLIC  "include"
)

target_compile_options(msg
    PRIVATE "-Werror"
)

# vim: ts=4 sw=4 et
