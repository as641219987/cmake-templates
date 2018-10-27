cmake_minimum_required(VERSION 3.5)
project(Hello2)

find_package(foo REQUIRED
    PATHS "libfoo/config"
)

add_executable(hello src/hello.c)
target_link_libraries(hello foo::foo)

# vim: ts=4 sw=4 et
