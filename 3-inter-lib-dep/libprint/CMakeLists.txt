project(Print)

add_library(print src/print.c)
target_link_libraries(print PRIVATE msg)

target_include_directories(print
    PRIVATE "src"
    PUBLIC  "include"
)

target_compile_options(print
    PRIVATE "-Werror"
)

# vim: ts=4 sw=4 et
