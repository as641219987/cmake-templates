cmake_minimum_required(VERSION 3.5)
project(Foo)

add_library(foo src/foo.c)

target_include_directories(foo
    PRIVATE "src"
    PUBLIC  "include"
)

target_compile_options(foo
    PRIVATE "-Wall" "-Wextra" "-Werror"
    PUBLIC  "-fsigned-char"
)

target_compile_definitions(foo
    PRIVATE "WITH_SOMETHIGN"
    PUBLIC  "HAS_FOO"
)

# vim: ts=4 sw=4 et
