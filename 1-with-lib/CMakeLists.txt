cmake_minimum_required(VERSION 3.5)
project(Hello1)

add_subdirectory(libfoo)

add_executable(hello src/hello.c)
target_link_libraries(hello foo)

# vim: ts=4 sw=4 et
