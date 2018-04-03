cmake_minimum_required(VERSION 2.8) # Проверка версии CMake.
# Если версия установленой программы
# старее указаной, произайдёт аварийный выход.
INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR}/include)
link_directories(${CMAKE_SOURCE_DIR}/libpath)

project(opengl)
add_executable(opengl opengl.cpp)       # Создает исполняемый файл с именем main
find_package(OpenGL REQUIRED)
#find_package(GLUT REQUIRED)
#include_directories( ${OPENGL_INCLUDE_DIRS}  ${GLUT_INCLUDE_DIRS} )
include_directories( ${OPENGL_INCLUDE_DIRS}   )

#target_link_libraries(opengl ${OPENGL_LIBRARIES} ${GLUT_LIBRARY} )

target_link_libraries(opengl ${OPENGL_LIBRARIES}  glfw3.lib glew32s.lib)
# из исходника main.cpp
