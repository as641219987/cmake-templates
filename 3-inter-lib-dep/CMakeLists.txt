cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(Hello3)

add_compile_options("-Wall" "-Wextra" "-g")

add_subdirectory(libmsg)
add_subdirectory(libprint)

add_subdirectory(hello)

# vim: ts=4 sw=4 et
