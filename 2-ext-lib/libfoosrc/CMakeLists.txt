cmake_minimum_required(VERSION 3.5)
project(Foo)

add_library(foo STATIC src/foo.c)

target_include_directories(foo
    PRIVATE
        "src"
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
)

target_compile_options(foo
    PRIVATE "-Wall" "-Wextra" "-Werror"
    PUBLIC  "-fsigned-char"
)

target_compile_definitions(foo
    PRIVATE "WITH_SOMETHIGN"
    PUBLIC  "HAS_FOO"
)

set_target_properties(foo
    PROPERTIES PUBLIC_HEADER "include/foo.h")

install(TARGETS foo
    EXPORT foo-config
    ARCHIVE DESTINATION "lib"
    PUBLIC_HEADER DESTINATION "include"
)
install(EXPORT foo-config
    NAMESPACE "foo::"
    DESTINATION "config"
)

# vim: ts=4 sw=4 et
