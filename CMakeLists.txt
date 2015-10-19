cmake_minimum_required(VERSION 3.0)
project(Updater)

if(NOT MSVC)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
endif()

find_package(Qt5 REQUIRED COMPONENTS Core Gui Network Widgets)

set(CMAKE_INCLUDE_CURRENT_DIR True)
set(CMAKE_AUTOMOC True)


include_directories(include)
add_library(Updater
    src/Updater.cpp include/Updater.hpp
    include/Constants.hpp
)

target_link_libraries(Updater
    ${Qt5Core_LIBRARIES}
    ${Qt5Gui_LIBRARIES}
    ${Qt5Widgets_LIBRARIES}
    ${Qt5Network_LIBRARIES}
)