cmake_minimum_required(VERSION 3.16)

set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)

# project(music-app)
project(ps6)

# setup qt version
set(QT Qt5)
# set(QT Qt6) # need fix, some of code cannot build with Qt6

# setup source code
file(GLOB_RECURSE SRCS src/*.cpp)
file(GLOB_RECURSE RESOURCES resources/*.qrc)

# include dirs
list(APPEND INCLUDE_DIRS ${CMAKE_SOURCE_DIR}/src)

# find qt dependencies and link libs
if (${QT} STREQUAL "Qt5")
  find_package(${QT} REQUIRED COMPONENTS Widgets PrintSupport Svg)
  list(APPEND LIBS ${QT}::Widgets ${QT}::Svg ${QT}::PrintSupport)
elseif (${QT} STREQUAL "Qt6")
  find_package(${QT} REQUIRED COMPONENTS Widgets PrintSupport SvgWidgets)
  list(APPEND LIBS ${QT}::Widgets ${QT}::SvgWidgets ${QT}::PrintSupport)
else()
  message("failed to compile with qt5 or qt6")
endif()

# build
add_executable(${PROJECT_NAME} ${SRCS} ${RESOURCES})
target_include_directories(${PROJECT_NAME} PUBLIC ${INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} PUBLIC ${LIBS})

# install
install(TARGETS 
  ${PROJECT_NAME}
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin)

# uninstall
if (NOT TARGET uninstall)
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
    IMMEDIATE @ONLY)
  add_custom_target(uninstall
    COMMAND ${CMAKE_COMMAND} -P ${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake)
endif()
