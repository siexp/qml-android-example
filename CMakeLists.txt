cmake_minimum_required(VERSION 3.15)

project(qml-android-example LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# QtCreator supports the following variables for Android, which are identical to qmake Android variables.
# Check http://doc.qt.io/qt-5/deployment-android.html for more information.
# They need to be set before the find_package(Qt5 ...) call.
if(ANDROID)
    include(${CMAKE_CURRENT_SOURCE_DIR}/platform/android/openssl/CMakeLists.txt)
endif()

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

if(ANDROID)
    add_library(qml-android-example SHARED
      main.cpp
      qml.qrc
    )
else()
    add_executable(qml-android-example
      main.cpp
      qml.qrc
    )
endif()

target_compile_definitions(qml-android-example
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(qml-android-example
  PRIVATE Qt5::Core Qt5::Quick)
