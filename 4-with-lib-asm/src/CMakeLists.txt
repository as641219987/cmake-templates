cmake_minimum_required(VERSION 3.5)
project(Main LANGUAGES C ASM)

add_library(mylib foo.c bar.S)

add_executable(main main.c)
target_link_libraries(main PRIVATE mylib)

# vim: ts=4 sw=4 et
