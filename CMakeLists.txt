cmake_minimum_required(VERSION 3.16)

project(Daksh-OpenGroundControl VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set Qt policy for QML module
if(POLICY CMP0100)
    cmake_policy(SET CMP0100 NEW)
endif()
if(POLICY QTP0004)
    cmake_policy(SET QTP0004 NEW)
endif()

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appDaksh-OpenGroundControl
    main.cpp
)

qt_add_qml_module(appDaksh-OpenGroundControl
    URI Daksh-OpenGroundControl
    VERSION 1.0
    QML_FILES
    main.qml
    qml/FlyView.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appDaksh-OpenGroundControl PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appDaksh-OpenGroundControl
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDaksh-OpenGroundControl
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appDaksh-OpenGroundControl
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
