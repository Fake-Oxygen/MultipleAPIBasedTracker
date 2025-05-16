cmake_minimum_required(VERSION 3.16)

project(MetaShelf VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)


qt_add_executable(appMetaShelf
    main.cpp
)

qt_add_qml_module(appMetaShelf
    URI MetaShelf
    VERSION 1.0
    QML_FILES
        Main.qml
RESOURCES assets/images/apple-icon.png assets/images/connected-plug-icon.png assets/images/disconnect-plug-icon.png assets/images/enter-icon.png assets/images/facebook-round-color-icon.png assets/images/github-icon.png assets/images/google-books-icon.png assets/images/google-color-icon.png assets/images/linkedin-app-icon.png assets/images/microsoft-icon.png assets/images/spotify-icon.png assets/images/user-profile-icon.png assets/images/x-social-media-black-icon.png
QML_FILES pages/AccountPage.qml  pages/BooksDelegate.qml pages/BooksModel.qml pages/BooksPageForm.ui.qml pages/ConnectionsDelegate.qml pages/ConnectionsModel.qml pages/LoginPage.ui.qml pages/Base.ui.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appMetaShelf PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appMetaShelf
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMetaShelf
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appMetaShelf
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
