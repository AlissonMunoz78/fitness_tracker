# CONTEXTO COMPLETO DEL PROYECTO

Generado automáticamente por export_context_flutter.dart


# ANÁLISIS DE ARQUITECTURA

## ACIERTOS

✅ Feature "activity" contiene data/domain/presentation.
✅ Feature "activity_record" contiene data/domain/presentation.
✅ Feature "auth" contiene data/domain/presentation.


# ESTRUCTURA DEL PROYECTO

📄 .flutter-plugins-dependencies
📄 .gitignore
📄 .metadata
📄 README.md
📄 analysis_options.yaml
📁 android
    📄 .gitignore
    📁 app
        📄 build.gradle.kts
        📁 src
            📁 debug
                📄 AndroidManifest.xml
            📁 main
                📄 AndroidManifest.xml
                📁 java
                    📁 io
                        📁 flutter
                            📁 plugins
                                📄 GeneratedPluginRegistrant.java
                📁 kotlin
                    📁 com
                        📁 tuinstituto
                            📁 fitness_tracker
                                📄 MainActivity.kt
                📁 res
                    📁 drawable
                        📄 launch_background.xml
                    📁 drawable-v21
                        📄 launch_background.xml
                    📁 mipmap-hdpi
                        📄 ic_launcher.png
                    📁 mipmap-mdpi
                        📄 ic_launcher.png
                    📁 mipmap-xhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxxhdpi
                        📄 ic_launcher.png
                    📁 values
                        📄 styles.xml
                    📁 values-night
                        📄 styles.xml
            📁 profile
                📄 AndroidManifest.xml
    📄 build.gradle.kts
    📁 gradle
        📁 wrapper
            📄 gradle-wrapper.jar
            📄 gradle-wrapper.properties
    📄 gradle.properties
    📄 gradlew
    📄 gradlew.bat
    📄 local.properties
    📄 settings.gradle.kts
📁 ios
    📄 .gitignore
    📁 Flutter
        📄 AppFrameworkInfo.plist
        📄 Debug.xcconfig
        📄 Generated.xcconfig
        📄 Release.xcconfig
        📁 ephemeral
            📄 flutter_lldb_helper.py
            📄 flutter_lldbinit
        📄 flutter_export_environment.sh
    📁 Runner
        📄 AppDelegate.swift
        📁 Assets.xcassets
            📁 AppIcon.appiconset
                📄 Contents.json
                📄 Icon-App-1024x1024@1x.png
                📄 Icon-App-20x20@1x.png
                📄 Icon-App-20x20@2x.png
                📄 Icon-App-20x20@3x.png
                📄 Icon-App-29x29@1x.png
                📄 Icon-App-29x29@2x.png
                📄 Icon-App-29x29@3x.png
                📄 Icon-App-40x40@1x.png
                📄 Icon-App-40x40@2x.png
                📄 Icon-App-40x40@3x.png
                📄 Icon-App-60x60@2x.png
                📄 Icon-App-60x60@3x.png
                📄 Icon-App-76x76@1x.png
                📄 Icon-App-76x76@2x.png
                📄 Icon-App-83.5x83.5@2x.png
            📁 LaunchImage.imageset
                📄 Contents.json
                📄 LaunchImage.png
                📄 LaunchImage@2x.png
                📄 LaunchImage@3x.png
                📄 README.md
        📁 Base.lproj
            📄 LaunchScreen.storyboard
            📄 Main.storyboard
        📄 GeneratedPluginRegistrant.h
        📄 GeneratedPluginRegistrant.m
        📄 Info.plist
        📄 Runner-Bridging-Header.h
        📄 SceneDelegate.swift
    📁 Runner.xcodeproj
        📄 project.pbxproj
        📁 project.xcworkspace
            📄 contents.xcworkspacedata
            📁 xcshareddata
                📄 IDEWorkspaceChecks.plist
                📄 WorkspaceSettings.xcsettings
        📁 xcshareddata
            📁 xcschemes
                📄 Runner.xcscheme
    📁 Runner.xcworkspace
        📄 contents.xcworkspacedata
        📁 xcshareddata
            📄 IDEWorkspaceChecks.plist
            📄 WorkspaceSettings.xcsettings
    📁 RunnerTests
        📄 RunnerTests.swift
📁 lib
    📁 core
        📁 platform
            📄 platform_channels.dart
    📁 features
        📁 activity
            📁 data
                📁 datasources
                    📄 activity_datasource_impl.dart
                📁 services
                    📄 tts_service.dart
            📁 domain
                📁 entities
                    📄 activity_state.dart
                    📄 fall_event.dart
            📁 presentation
                📁 bloc
                    📄 activity_bloc.dart
                📁 pages
                    📄 activity_page.dart
        📁 activity_record
            📁 data
                📁 repositories
                    📄 activity_record_repository.dart
            📁 domain
                📁 entities
                    📄 activity_record.dart
            📁 presentation
                📁 bloc
                    📄 activity_record_bloc.dart
                📁 pages
                    📄 history_page.dart
        📁 auth
            📁 data
                📁 datasources
                    📄 accelerometer_datasource.dart
                    📄 biometric_datasource.dart
            📁 domain
                📁 entities
                    📄 auth_result.dart
                    📄 step_data.dart
                📁 usecases
                    📄 authenticate_user.dart
            📁 presentation
                📁 bloc
                    📄 auth_bloc.dart
                📁 pages
                    📄 login_page.dart
            📁 steps
                📁 presentation
                    📁 widgets
                        📄 step_counter_widget.dart
            📁 tracking
                📁 data
                    📁 datasources
                        📄 gps_datasource.dart
                📁 domain
                    📁 entities
                        📄 location_point.dart
                📁 presentation
                    📁 widgets
                        📄 route_map_widget.dart
    📄 injection_container.dart
    📄 main.dart
📄 pubspec.yaml
📁 test
    📄 widget_test.dart


# CONTENIDO DE LOS ARCHIVOS

          
================================================
📄 ARCHIVO: .flutter-plugins-dependencies
================================================

{"info":"This is a generated file; do not edit or check into version control.","plugins":{"ios":[{"name":"flutter_tts","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-1.6.1\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_apple","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_apple-9.4.10\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"android":[{"name":"flutter_plugin_android_lifecycle","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_plugin_android_lifecycle-2.0.35\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"flutter_tts","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_android","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_android-4.6.2\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_android","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_android-1.0.56\\\\","native_build":true,"dependencies":["flutter_plugin_android_lifecycle"],"dev_dependency":false},{"name":"permission_handler_android","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_android-12.1.0\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_android","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_android-2.4.23\\\\","native_build":true,"dependencies":[],"dev_dependency":false}],"macos":[{"name":"flutter_tts","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_apple","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_apple-2.3.14\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_darwin","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_darwin-1.6.1\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_foundation","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_foundation-2.5.6\\\\","shared_darwin_source":true,"native_build":true,"dependencies":[],"dev_dependency":false}],"linux":[{"name":"path_provider_linux","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_linux-2.2.1\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_linux","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_linux-2.4.1\\\\","native_build":false,"dependencies":["path_provider_linux"],"dev_dependency":false}],"windows":[{"name":"flutter_tts","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"geolocator_windows","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_windows-0.2.5\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"local_auth_windows","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\local_auth_windows-1.0.11\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"path_provider_windows","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\path_provider_windows-2.3.0\\\\","native_build":false,"dependencies":[],"dev_dependency":false},{"name":"permission_handler_windows","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_windows-0.2.1\\\\","native_build":true,"dependencies":[],"dev_dependency":false},{"name":"shared_preferences_windows","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_windows-2.4.1\\\\","native_build":false,"dependencies":["path_provider_windows"],"dev_dependency":false}],"web":[{"name":"flutter_tts","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\flutter_tts-4.2.5\\\\","dependencies":[],"dev_dependency":false},{"name":"geolocator_web","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\geolocator_web-4.1.4\\\\","dependencies":[],"dev_dependency":false},{"name":"permission_handler_html","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\permission_handler_html-0.1.3+5\\\\","dependencies":[],"dev_dependency":false},{"name":"sensors_plus","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\sensors_plus-5.0.1\\\\","dependencies":[],"dev_dependency":false},{"name":"shared_preferences_web","path":"C:\\\\Users\\\\HP\\\\AppData\\\\Local\\\\Pub\\\\Cache\\\\hosted\\\\pub.dev\\\\shared_preferences_web-2.4.3\\\\","dependencies":[],"dev_dependency":false}]},"dependencyGraph":[{"name":"flutter_plugin_android_lifecycle","dependencies":[]},{"name":"flutter_tts","dependencies":[]},{"name":"geolocator","dependencies":["geolocator_android","geolocator_apple","geolocator_web","geolocator_windows"]},{"name":"geolocator_android","dependencies":[]},{"name":"geolocator_apple","dependencies":[]},{"name":"geolocator_web","dependencies":[]},{"name":"geolocator_windows","dependencies":[]},{"name":"local_auth","dependencies":["local_auth_android","local_auth_darwin","local_auth_windows"]},{"name":"local_auth_android","dependencies":["flutter_plugin_android_lifecycle"]},{"name":"local_auth_darwin","dependencies":[]},{"name":"local_auth_windows","dependencies":[]},{"name":"path_provider_linux","dependencies":[]},{"name":"path_provider_windows","dependencies":[]},{"name":"permission_handler","dependencies":["permission_handler_android","permission_handler_apple","permission_handler_html","permission_handler_windows"]},{"name":"permission_handler_android","dependencies":[]},{"name":"permission_handler_apple","dependencies":[]},{"name":"permission_handler_html","dependencies":[]},{"name":"permission_handler_windows","dependencies":[]},{"name":"sensors_plus","dependencies":[]},{"name":"shared_preferences","dependencies":["shared_preferences_android","shared_preferences_foundation","shared_preferences_linux","shared_preferences_web","shared_preferences_windows"]},{"name":"shared_preferences_android","dependencies":[]},{"name":"shared_preferences_foundation","dependencies":[]},{"name":"shared_preferences_linux","dependencies":["path_provider_linux"]},{"name":"shared_preferences_web","dependencies":[]},{"name":"shared_preferences_windows","dependencies":["path_provider_windows"]}],"date_created":"2026-06-23 20:13:40.749975","version":"3.41.9","swift_package_manager_enabled":{"ios":false,"macos":false}}

          
================================================
📄 ARCHIVO: .gitignore
================================================

# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.build/
.buildlog/
.history
.svn/
.swiftpm/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins-dependencies
.pub-cache/
.pub/
/build/
/coverage/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug
/android/app/profile
/android/app/release


          
================================================
📄 ARCHIVO: .metadata
================================================

# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "00b0c91f06209d9e4a41f71b7a512d6eb3b9c694"
  channel: "stable"

project_type: app

# Tracks metadata for the flutter migrate command
migration:
  platforms:
    - platform: root
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: android
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: ios
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: linux
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: macos
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: web
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
    - platform: windows
      create_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694
      base_revision: 00b0c91f06209d9e4a41f71b7a512d6eb3b9c694

  # User provided section

  # List of Local paths (relative to this file) that should be
  # ignored by the migrate tool.
  #
  # Files that are not part of the templates will be ignored by default.
  unmanaged_files:
    - 'lib/main.dart'
    - 'ios/Runner.xcodeproj/project.pbxproj'


          
================================================
📄 ARCHIVO: analysis_options.yaml
================================================

# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

analyzer:
  language:
    strict-inference: true
    strict-raw-types: true

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options


          
================================================
📄 ARCHIVO: android\.gitignore
================================================

gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java
.cxx/

# Remember to never publicly share your keystore.
# See https://flutter.dev/to/reference-keystore
key.properties
**/*.keystore
**/*.jks


          
================================================
📄 ARCHIVO: ios\.gitignore
================================================

**/dgph
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/ephemeral/
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3


          
================================================
📄 ARCHIVO: ios\Flutter\Debug.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Flutter\Generated.xcconfig
================================================

// This is a generated file; do not edit or check into version control.
FLUTTER_ROOT=C:\Universidad\2026\Moviles\flutter_windows_3.41.9-stable\flutter
FLUTTER_APPLICATION_PATH=C:\Universidad\2026\Moviles\ProyectFlutter\Fittness-app-main
COCOAPODS_PARALLEL_CODE_SIGN=true
FLUTTER_TARGET=lib\main.dart
FLUTTER_BUILD_DIR=build
FLUTTER_BUILD_NAME=1.0.0
FLUTTER_BUILD_NUMBER=1.0.0
EXCLUDED_ARCHS[sdk=iphonesimulator*]=i386
EXCLUDED_ARCHS[sdk=iphoneos*]=armv7
DART_OBFUSCATION=false
TRACK_WIDGET_CREATION=true
TREE_SHAKE_ICONS=false
PACKAGE_CONFIG=.dart_tool/package_config.json


          
================================================
📄 ARCHIVO: ios\Flutter\Release.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json
================================================

{
  "images" : [
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "20x20",
      "idiom" : "iphone",
      "filename" : "Icon-App-20x20@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "iphone",
      "filename" : "Icon-App-29x29@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "iphone",
      "filename" : "Icon-App-40x40@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "60x60",
      "idiom" : "iphone",
      "filename" : "Icon-App-60x60@3x.png",
      "scale" : "3x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "20x20",
      "idiom" : "ipad",
      "filename" : "Icon-App-20x20@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "29x29",
      "idiom" : "ipad",
      "filename" : "Icon-App-29x29@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "40x40",
      "idiom" : "ipad",
      "filename" : "Icon-App-40x40@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@1x.png",
      "scale" : "1x"
    },
    {
      "size" : "76x76",
      "idiom" : "ipad",
      "filename" : "Icon-App-76x76@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "83.5x83.5",
      "idiom" : "ipad",
      "filename" : "Icon-App-83.5x83.5@2x.png",
      "scale" : "2x"
    },
    {
      "size" : "1024x1024",
      "idiom" : "ios-marketing",
      "filename" : "Icon-App-1024x1024@1x.png",
      "scale" : "1x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\Contents.json
================================================

{
  "images" : [
    {
      "idiom" : "universal",
      "filename" : "LaunchImage.png",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@3x.png",
      "scale" : "3x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\README.md
================================================

# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.

          
================================================
📄 ARCHIVO: lib\core\platform\platform_channels.dart
================================================

/// Constantes para los nombres de Platform Channels
/// Centralizar nombres evita errores de tipeo
class PlatformChannels {
  // Prevenir instanciación
  PlatformChannels._();

  static const String biometric = 'com.tuinstituto.fitness/biometric';
  static const String accelerometer = 'com.tuinstituto.fitness/accelerometer';
  static const String gps = 'com.tuinstituto.fitness/gps';
}


          
================================================
📄 ARCHIVO: lib\features\activity\data\datasources\activity_datasource_impl.dart
================================================

import 'dart:async';
import 'dart:math';

import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../../auth/domain/entities/step_data.dart' show ActivityType;
import '../../../auth/data/datasources/accelerometer_datasource.dart';

class ActivityDataSourceImpl {
  final AccelerometerDataSource _accelerometerDataSource;

  ActivityDataSourceImpl(this._accelerometerDataSource);

  // Umbral de caída: 42.0 m/s²
  // Gravedad normal = 9.8. Un impacto real supera 20. 
  // 42.0 m/s² (~4.3G) da margen para detectar solo impactos reales de caídas y no movimientos de carrera.
  static const double _fallThreshold = 55.0;

  // Cooldown entre caídas: 2 segundos
  // Evita múltiples eventos del mismo impacto (rebote del dispositivo)
  static const Duration _fallCooldown = Duration(seconds: 4);

  DateTime? _lastFallTime;

  // ─── STREAM DE ACTIVIDAD ──────────────────────────────────────────
  // Utiliza el AccelerometerDataSource compartido de la aplicación para mayor estabilidad y sincronía.
  // Esto garantiza consistencia absoluta con la pestaña de inicio y evita fallos o conflictos
  // al registrar múltiples listeners del mismo EventChannel nativo.
  Stream<ActivityState> get activityStream {
    return _accelerometerDataSource.stepStream.map((stepData) {
      UserActivityType type;
      switch (stepData.activityType) {
        case ActivityType.walking:
          type = UserActivityType.walking;
          break;
        case ActivityType.running:
          type = UserActivityType.running;
          break;
        case ActivityType.stationary:
          type = UserActivityType.stationary;
          break;
      }

      return ActivityState(
        type: type,
        detectedAt: DateTime.now(),
      );
    });
  }

  // ─── STREAM DE CAÍDAS ────────────────────────────────────────────
  // Usa sensors_plus para datos crudos del acelerómetro.
  // activity_recognition_flutter NO detecta caídas, por eso
  // necesitamos los dos plugins.
  Stream<FallEvent> get fallStream {
  // Buffer de las últimas 3 lecturas para promedio móvil.
  // El LSM6DST a 100Hz genera mucho ruido puntual.
  // Promediar 3 muestras (~30ms) suaviza sin perder el pico real.
  final List<double> _buffer = [];
  const int _bufferSize = 3;

  return accelerometerEventStream().where((AccelerometerEvent e) {
    final double raw = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);

    // Mantener buffer de tamaño fijo
    _buffer.add(raw);
    if (_buffer.length > _bufferSize) _buffer.removeAt(0);

    // Promedio de las últimas lecturas
    final double magnitude =
        _buffer.reduce((a, b) => a + b) / _buffer.length;

    final DateTime now = DateTime.now();

    if (magnitude < _fallThreshold) return false;

    if (_lastFallTime != null &&
        now.difference(_lastFallTime!) < _fallCooldown) {
      return false;
    }

    _lastFallTime = now;
    return true;
  }).map((AccelerometerEvent e) {
    final double magnitude = sqrt(e.x * e.x + e.y * e.y + e.z * e.z);
    return FallEvent(
      magnitude: magnitude,
      occurredAt: DateTime.now(),
    );
  });
}

  // ─── PERMISOS ────────────────────────────────────────────────────
  Future<bool> requestPermissions() async {
    // activityRecognition cubre el ACTIVITY_RECOGNITION del manifest
    // sensors cubre el BODY_SENSORS del manifest
    final activity = await Permission.activityRecognition.request();
    final sensors = await Permission.sensors.request();
    return activity.isGranted && sensors.isGranted;
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\data\services\tts_service.dart
================================================

import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  final FlutterTts _tts = FlutterTts();

  Future<void> init() async {
    await _tts.setLanguage('es-ES');
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
  }

  Future<void> speak(String text) async {
    await _tts.stop();
    await _tts.speak(text);
  }

  void dispose() {
    _tts.stop();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\domain\entities\activity_state.dart
================================================

import 'package:equatable/equatable.dart';

/// Enum propio de la app (renombrado a UserActivityType
/// para evitar colisión con el enum ActivityType del plugin
/// activity_recognition_flutter)
enum UserActivityType {
  walking,
  running,
  stationary,
  unknown,
}

class ActivityState extends Equatable {
  final UserActivityType type;
  final DateTime detectedAt;

  const ActivityState({
    required this.type,
    required this.detectedAt,
  });

  /// Texto que se muestra en la UI
  String get label {
    switch (type) {
      case UserActivityType.walking:
        return 'Caminando';
      case UserActivityType.running:
        return 'Corriendo';
      case UserActivityType.stationary:
        return 'Detenido';
      case UserActivityType.unknown:
        return 'Detectando...';
    }
  }

  /// Texto que lee flutter_tts en voz alta
  String get voiceMessage {
    switch (type) {
      case UserActivityType.walking:
        return 'Estás caminando';
      case UserActivityType.running:
        return 'Estás corriendo';
      case UserActivityType.stationary:
        return 'Te has detenido';
      case UserActivityType.unknown:
        return '';
    }
  }

  @override
  List<Object?> get props => [type, detectedAt];
}

          
================================================
📄 ARCHIVO: lib\features\activity\domain\entities\fall_event.dart
================================================

import 'package:equatable/equatable.dart';

class FallEvent extends Equatable {
  final double magnitude;
  final DateTime occurredAt;

  const FallEvent({
    required this.magnitude,
    required this.occurredAt,
  });

  @override
  List<Object?> get props => [magnitude, occurredAt];
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\bloc\activity_bloc.dart
================================================

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../domain/entities/activity_state.dart';
import '../../domain/entities/fall_event.dart';
import '../../data/services/tts_service.dart';

// ═══════════════════════════════════════════════════════════════
// EVENTOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// El usuario presionó "Iniciar"
class ActivityStarted extends ActivityEvent {}

/// El usuario presionó "Detener"
class ActivityStopped extends ActivityEvent {}

/// Llegó un nuevo estado del stream de actividad
class ActivityChanged extends ActivityEvent {
  final ActivityState state;
  ActivityChanged(this.state);

  @override
  List<Object?> get props => [state];
}

/// El acelerómetro detectó una caída
class FallDetected extends ActivityEvent {
  final FallEvent event;
  FallDetected(this.event);

  @override
  List<Object?> get props => [event];
}

/// El usuario respondió "Estoy bien" en el diálogo
class FallConfirmed extends ActivityEvent {}

/// El usuario respondió "Necesito ayuda" en el diálogo
class FallDismissed extends ActivityEvent {}

// ═══════════════════════════════════════════════════════════════
// ESTADOS
// ═══════════════════════════════════════════════════════════════

abstract class ActivityBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Estado inicial antes de iniciar el tracking
class ActivityInitial extends ActivityBlocState {}

/// Tracking activo con el estado actual del usuario
class ActivityTracking extends ActivityBlocState {
  final ActivityState current;
  ActivityTracking(this.current);

  @override
  List<Object?> get props => [current];
}

/// Se detectó una caída — la UI debe mostrar el diálogo
class FallAlert extends ActivityBlocState {
  final FallEvent event;
  FallAlert(this.event);

  @override
  List<Object?> get props => [event];
}

/// El usuario confirmó que está bien — volver al tracking
class FallResolved extends ActivityBlocState {}

// ═══════════════════════════════════════════════════════════════
// BLOC
// ═══════════════════════════════════════════════════════════════

class ActivityBloc extends Bloc<ActivityEvent, ActivityBlocState> {
  final ActivityDataSourceImpl _dataSource;
  final TtsService _ttsService;

  StreamSubscription<ActivityState>? _activitySub;
  StreamSubscription<FallEvent>? _fallSub;

  // ── Debounce de voz ──────────────────────────────────────────
  // Solo se anuncia un cambio si el nuevo estado se mantuvo
  // estable durante 3 segundos y es diferente al último anunciado.
  // Justificación: el acelerómetro oscila entre walking/stationary
  // en milisegundos al dar un paso. 3s garantiza estabilidad real.
  static const Duration _debounceDuration = Duration(milliseconds: 1500);

  UserActivityType? _lastAnnouncedType;
  UserActivityType? _pendingType;
  Timer? _debounceTimer;

  ActivityBloc({
    required ActivityDataSourceImpl dataSource,
    required TtsService ttsService,
  })  : _dataSource = dataSource,
        _ttsService = ttsService,
        super(ActivityInitial()) {
    on<ActivityStarted>(_onStarted);
    on<ActivityStopped>(_onStopped);
    on<ActivityChanged>(_onActivityChanged);
    on<FallDetected>(_onFallDetected);
    on<FallConfirmed>(_onFallConfirmed);
    on<FallDismissed>(_onFallDismissed);
  }

  // ── Iniciar tracking ─────────────────────────────────────────
  Future<void> _onStarted(
    ActivityStarted event,
    Emitter<ActivityBlocState> emit,
  ) async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) {
      return;
    }

    await _ttsService.init();

    emit(ActivityTracking(ActivityState(
      type: UserActivityType.unknown,
      detectedAt: DateTime.now(),
    )));

    // Suscribirse al stream de actividad
    _activitySub = _dataSource.activityStream.listen((activityState) {
      add(ActivityChanged(activityState));
    });

    // Suscribirse al stream de caídas
    _fallSub = _dataSource.fallStream.listen((fallEvent) {
      add(FallDetected(fallEvent));
    });
  }

  // ── Detener tracking ─────────────────────────────────────────
  Future<void> _onStopped(
    ActivityStopped event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _cancelSubscriptions();
    emit(ActivityInitial());
  }

  // ── Nuevo estado de actividad ─────────────────────────────────
  void _onActivityChanged(
    ActivityChanged event,
    Emitter<ActivityBlocState> emit,
  ) {
    // Si estamos en medio de una alerta de caída, ignoramos los cambios de actividad
    // para evitar interrumpir la alerta de caída o emitir anuncios de voz contradictorios.
    if (state is FallAlert) {
      return;
    }

    final incoming = event.state.type;

    if (incoming != _lastAnnouncedType) {
      if (incoming != _pendingType) {
        _debounceTimer?.cancel();
        _pendingType = incoming;

        if (incoming != UserActivityType.unknown) {
          _debounceTimer = Timer(_debounceDuration, () {
            if (_pendingType == incoming && _pendingType != _lastAnnouncedType) {
              _ttsService.speak(event.state.voiceMessage);
              _lastAnnouncedType = _pendingType;
            }
          });
        }
      }
    } else {
      _debounceTimer?.cancel();
      _pendingType = null;
    }

    emit(ActivityTracking(event.state));
  }

  // ── Caída detectada ──────────────────────────────────────────
  Future<void> _onFallDetected(
    FallDetected event,
    Emitter<ActivityBlocState> emit,
  ) async {
    // Cancelar cualquier anuncio de actividad pendiente inmediatamente
    _debounceTimer?.cancel();
    _pendingType = null;

    await _ttsService.speak('¡Atención! Se detectó una posible caída. ¿Estás bien?');
    emit(FallAlert(event.event));
  }

  // ── Usuario respondió "Estoy bien" ───────────────────────────
  Future<void> _onFallConfirmed(
    FallConfirmed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService.speak('Me alegra que estés bien. Continuando el seguimiento.');
    emit(FallResolved());
  }

  // ── Usuario respondió "Necesito ayuda" ───────────────────────
  Future<void> _onFallDismissed(
    FallDismissed event,
    Emitter<ActivityBlocState> emit,
  ) async {
    await _ttsService.speak('Entendido. Por favor busca ayuda de inmediato.');
    emit(FallResolved());
  }

  // ── Limpieza ──────────────────────────────────────────────────
  Future<void> _cancelSubscriptions() async {
    await _activitySub?.cancel();
    await _fallSub?.cancel();
    _activitySub = null;
    _fallSub = null;
    _debounceTimer?.cancel();
    _debounceTimer = null;
    _lastAnnouncedType = null;
    _pendingType = null;
  }

  @override
  Future<void> close() async {
    await _cancelSubscriptions();
    _ttsService.dispose();
    return super.close();
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity\presentation\pages\activity_page.dart
================================================

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_bloc.dart';
import '../../domain/entities/activity_state.dart';
import '../../data/datasources/activity_datasource_impl.dart';
import '../../../../injection_container.dart';
import '../../../activity_record/data/repositories/activity_record_repository.dart';
import '../../../activity_record/domain/entities/activity_record.dart';
import '../../../auth/data/datasources/accelerometer_datasource.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  DateTime? _sessionStart;
  bool _hadFall = false;

  @override
  void initState() {
    super.initState();
    _requestPermissionsAndStart();
  }

  Future<void> _requestPermissionsAndStart() async {
    final datasource = sl<ActivityDataSourceImpl>();
    final granted = await datasource.requestPermissions();

    if (!mounted) return;

    if (granted) {
      setState(() {
        _sessionStart = DateTime.now();
        _hadFall = false;
      });
      context.read<ActivityBloc>().add(ActivityStarted());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Permisos denegados. Ve a Ajustes > Permisos.'),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    }
  }

  Future<void> _saveSessionRecord(ActivityBlocState currentState) async {
    if (_sessionStart == null) return;

    final accelerometer = sl<AccelerometerDataSource>();
    int currentSteps = 0;
    await accelerometer.stepStream.first.then((data) {
      currentSteps = data.stepCount;
    }).catchError((_) {});

    String activityType = 'stationary';
    if (currentState is ActivityTracking) {
      switch (currentState.current.type) {
        case UserActivityType.walking:
          activityType = 'walking';
          break;
        case UserActivityType.running:
          activityType = 'running';
          break;
        default:
          activityType = 'stationary';
      }
    }

    final record = ActivityRecord(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      activityType: activityType,
      startedAt: _sessionStart!,
      endedAt: DateTime.now(),
      steps: currentSteps,
      distanceKm: currentSteps * 0.0007,
      calories: currentSteps * 0.04,
      hadFallDetected: _hadFall,
    );

    await sl<ActivityRecordRepository>().saveRecord(record);
  }

  void _showFallDialog(BuildContext context, FallAlert state) {
    _hadFall = true;
    bool showSecondary = false;
    Timer? secondaryTimer;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (ctx, setDialogState) {
            secondaryTimer ??= Timer(
              const Duration(seconds: 15),
              () => setDialogState(() => showSecondary = true),
            );

            return AlertDialog(
              backgroundColor: const Color(0xFF1A1A1A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Row(
                children: [
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.orange, size: 28),
                  SizedBox(width: 8),
                  Text(
                    '¿Estás bien?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Se detectó una posible caída.',
                    style: TextStyle(color: Color(0xFF9E9E9E)),
                  ),
                  if (showSecondary) ...[
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const Text(
                        '¡Por favor responde! ¿Necesitas ayuda?',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallConfirmed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text(
                    'Estoy bien',
                    style: TextStyle(color: Color(0xFFFF6B35)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    secondaryTimer?.cancel();
                    context.read<ActivityBloc>().add(FallDismissed());
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Necesito ayuda'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        title: const Text(
          'Detector de Actividad',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
      ),
      body: BlocListener<ActivityBloc, ActivityBlocState>(
        listener: (context, state) {
          if (state is FallAlert) {
            _showFallDialog(context, state);
          }
        },
        child: BlocBuilder<ActivityBloc, ActivityBlocState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFFF6B35).withOpacity(0.15),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: state is ActivityTracking
                                    ? const Color(0xFFFF6B35).withOpacity(0.15)
                                    : const Color(0xFF1A1A1A),
                                border: Border.all(
                                  color: state is ActivityTracking
                                      ? const Color(0xFFFF6B35)
                                      : const Color(0xFF2A2A2A),
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                _getIcon(state),
                                size: 72,
                                color: state is ActivityTracking
                                    ? const Color(0xFFFF6B35)
                                    : const Color(0xFF4A4A4A),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          _getLabel(state),
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          state is ActivityTracking
                              ? 'Sesión activa'
                              : 'Listo para iniciar',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF6B6B6B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 48),
                  child: GestureDetector(
                    onTap: () async {
                      if (state is ActivityTracking) {
                        await _saveSessionRecord(state);
                        if (context.mounted) {
                          context.read<ActivityBloc>().add(ActivityStopped());
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  const Text('✅ Sesión guardada en historial'),
                              backgroundColor: const Color(0xFFFF6B35),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          );
                        }
                      } else {
                        await _requestPermissionsAndStart();
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: double.infinity,
                      height: 64,
                      decoration: BoxDecoration(
                        color: state is ActivityTracking
                            ? const Color(0xFF2A2A2A)
                            : const Color(0xFFFF6B35),
                        borderRadius: BorderRadius.circular(20),
                        border: state is ActivityTracking
                            ? Border.all(color: Colors.red, width: 1.5)
                            : null,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            state is ActivityTracking
                                ? Icons.stop_rounded
                                : Icons.play_arrow_rounded,
                            color: state is ActivityTracking
                                ? Colors.red
                                : Colors.white,
                            size: 28,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            state is ActivityTracking
                                ? 'Detener sesión'
                                : 'Iniciar sesión',
                            style: TextStyle(
                              color: state is ActivityTracking
                                  ? Colors.red
                                  : Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  IconData _getIcon(ActivityBlocState state) {
    if (state is ActivityTracking) {
      switch (state.current.type) {
        case UserActivityType.walking:
          return Icons.directions_walk;
        case UserActivityType.running:
          return Icons.directions_run;
        case UserActivityType.stationary:
          return Icons.accessibility_new;
        case UserActivityType.unknown:
          return Icons.help_outline;
      }
    }
    return Icons.fitness_center;
  }

  String _getLabel(ActivityBlocState state) {
    if (state is ActivityTracking) return state.current.label;
    return 'Presiona Iniciar';
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity_record\data\repositories\activity_record_repository.dart
================================================

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/activity_record.dart';

/// Repositorio CRUD para el historial de actividad
/// Usa shared_preferences como persistencia local (JSON)
class ActivityRecordRepository {
  static const String _key = 'activity_records';

  // ── CREATE ────────────────────────────────────────────────────
  Future<void> saveRecord(ActivityRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getAllRecords();
    // Reemplaza si ya existe el mismo id (UPDATE), sino agrega (CREATE)
    final index = records.indexWhere((r) => r.id == record.id);
    if (index >= 0) {
      records[index] = record;
    } else {
      records.add(record);
    }
    final encoded = records.map((r) => jsonEncode(r.toMap())).toList();
    await prefs.setStringList(_key, encoded);
  }

  // ── READ ALL ──────────────────────────────────────────────────
  Future<List<ActivityRecord>> getAllRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getStringList(_key) ?? [];
    return raw
        .map((s) => ActivityRecord.fromMap(
              jsonDecode(s) as Map<String, dynamic>,
            ))
        .toList()
      ..sort((a, b) => b.startedAt.compareTo(a.startedAt)); // más reciente primero
  }

  // ── READ ONE ──────────────────────────────────────────────────
  Future<ActivityRecord?> getRecordById(String id) async {
    final records = await getAllRecords();
    try {
      return records.firstWhere((r) => r.id == id);
    } catch (_) {
      return null;
    }
  }

  // ── UPDATE ────────────────────────────────────────────────────
  Future<void> updateRecord(ActivityRecord updated) => saveRecord(updated);

  // ── DELETE ────────────────────────────────────────────────────
  Future<void> deleteRecord(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getAllRecords();
    records.removeWhere((r) => r.id == id);
    final encoded = records.map((r) => jsonEncode(r.toMap())).toList();
    await prefs.setStringList(_key, encoded);
  }

  // ── DELETE ALL ────────────────────────────────────────────────
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity_record\domain\entities\activity_record.dart
================================================

import 'package:equatable/equatable.dart';

/// Registro histórico de una sesión de actividad física
class ActivityRecord extends Equatable {
  final String id;
  final String activityType;   // "walking", "running", "stationary"
  final DateTime startedAt;
  final DateTime? endedAt;
  final int steps;
  final double distanceKm;
  final double calories;
  final bool hadFallDetected;

  const ActivityRecord({
    required this.id,
    required this.activityType,
    required this.startedAt,
    this.endedAt,
    this.steps = 0,
    this.distanceKm = 0.0,
    this.calories = 0.0,
    this.hadFallDetected = false,
  });

  Duration get duration {
    final end = endedAt ?? DateTime.now();
    return end.difference(startedAt);
  }

  String get durationLabel {
    final d = duration;
    if (d.inHours > 0) return '${d.inHours}h ${d.inMinutes.remainder(60)}m';
    return '${d.inMinutes}m ${d.inSeconds.remainder(60)}s';
  }

  /// Serialización para shared_preferences (JSON)
  Map<String, dynamic> toMap() => {
    'id': id,
    'activityType': activityType,
    'startedAt': startedAt.toIso8601String(),
    'endedAt': endedAt?.toIso8601String(),
    'steps': steps,
    'distanceKm': distanceKm,
    'calories': calories,
    'hadFallDetected': hadFallDetected,
  };

  factory ActivityRecord.fromMap(Map<String, dynamic> map) => ActivityRecord(
    id: map['id'] as String,
    activityType: map['activityType'] as String,
    startedAt: DateTime.parse(map['startedAt'] as String),
    endedAt: map['endedAt'] != null
        ? DateTime.parse(map['endedAt'] as String)
        : null,
    steps: (map['steps'] as int?) ?? 0,
    distanceKm: (map['distanceKm'] as num?)?.toDouble() ?? 0.0,
    calories: (map['calories'] as num?)?.toDouble() ?? 0.0,
    hadFallDetected: (map['hadFallDetected'] as bool?) ?? false,
  );

  ActivityRecord copyWith({
    String? activityType,
    DateTime? endedAt,
    int? steps,
    double? distanceKm,
    double? calories,
    bool? hadFallDetected,
  }) =>
      ActivityRecord(
        id: id,
        activityType: activityType ?? this.activityType,
        startedAt: startedAt,
        endedAt: endedAt ?? this.endedAt,
        steps: steps ?? this.steps,
        distanceKm: distanceKm ?? this.distanceKm,
        calories: calories ?? this.calories,
        hadFallDetected: hadFallDetected ?? this.hadFallDetected,
      );

  @override
  List<Object?> get props => [id, activityType, startedAt, endedAt, steps];
}

          
================================================
📄 ARCHIVO: lib\features\activity_record\presentation\bloc\activity_record_bloc.dart
================================================

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/repositories/activity_record_repository.dart';
import '../../domain/entities/activity_record.dart';

// ── EVENTOS ────────────────────────────────────────────────────
abstract class ActivityRecordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadRecords extends ActivityRecordEvent {}

class AddRecord extends ActivityRecordEvent {
  final ActivityRecord record;
  AddRecord(this.record);
  @override
  List<Object?> get props => [record];
}

class UpdateRecord extends ActivityRecordEvent {
  final ActivityRecord record;
  UpdateRecord(this.record);
  @override
  List<Object?> get props => [record];
}

class DeleteRecord extends ActivityRecordEvent {
  final String id;
  DeleteRecord(this.id);
  @override
  List<Object?> get props => [id];
}

class ClearAllRecords extends ActivityRecordEvent {}

// ── ESTADOS ────────────────────────────────────────────────────
abstract class ActivityRecordState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityRecordInitial extends ActivityRecordState {}

class ActivityRecordLoading extends ActivityRecordState {}

class ActivityRecordLoaded extends ActivityRecordState {
  final List<ActivityRecord> records;
  ActivityRecordLoaded(this.records);
  @override
  List<Object?> get props => [records];
}

class ActivityRecordError extends ActivityRecordState {
  final String message;
  ActivityRecordError(this.message);
  @override
  List<Object?> get props => [message];
}

// ── BLOC ───────────────────────────────────────────────────────
class ActivityRecordBloc
    extends Bloc<ActivityRecordEvent, ActivityRecordState> {
  final ActivityRecordRepository _repository;

  ActivityRecordBloc(this._repository) : super(ActivityRecordInitial()) {
    on<LoadRecords>(_onLoad);
    on<AddRecord>(_onAdd);
    on<UpdateRecord>(_onUpdate);
    on<DeleteRecord>(_onDelete);
    on<ClearAllRecords>(_onClearAll);
  }

  Future<void> _onLoad(LoadRecords event, Emitter emit) async {
    emit(ActivityRecordLoading());
    try {
      final records = await _repository.getAllRecords();
      emit(ActivityRecordLoaded(records));
    } catch (e) {
      emit(ActivityRecordError(e.toString()));
    }
  }

  Future<void> _onAdd(AddRecord event, Emitter emit) async {
    await _repository.saveRecord(event.record);
    add(LoadRecords());
  }

  Future<void> _onUpdate(UpdateRecord event, Emitter emit) async {
    await _repository.updateRecord(event.record);
    add(LoadRecords());
  }

  Future<void> _onDelete(DeleteRecord event, Emitter emit) async {
    await _repository.deleteRecord(event.id);
    add(LoadRecords());
  }

  Future<void> _onClearAll(ClearAllRecords event, Emitter emit) async {
    await _repository.clearAll();
    add(LoadRecords());
  }
}

          
================================================
📄 ARCHIVO: lib\features\activity_record\presentation\pages\history_page.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_record_bloc.dart';
import '../../domain/entities/activity_record.dart';
import '../../../../injection_container.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ActivityRecordBloc>()..add(LoadRecords()),
      child: const _HistoryView(),
    );
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        title: const Text(
          'Historial',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_sweep_outlined,
                color: Color(0xFF6B6B6B)),
            tooltip: 'Borrar todo',
            onPressed: () => _confirmClearAll(context),
          ),
        ],
      ),
      body: BlocBuilder<ActivityRecordBloc, ActivityRecordState>(
        builder: (context, state) {
          if (state is ActivityRecordLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFFFF6B35)),
            );
          }
          if (state is ActivityRecordError) {
            return Center(
              child: Text(state.message,
                  style: const TextStyle(color: Colors.white)),
            );
          }
          if (state is ActivityRecordLoaded) {
            if (state.records.isEmpty) return _buildEmpty();
            return _buildList(context, state.records);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF2A2A2A),
                width: 1,
              ),
            ),
            child: const Icon(
              Icons.history,
              size: 48,
              color: Color(0xFF4A4A4A),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Sin registros todavía',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Inicia una sesión para ver tu historial',
            style: TextStyle(fontSize: 14, color: Color(0xFF6B6B6B)),
          ),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context, List<ActivityRecord> records) {
    final totalSteps = records.fold<int>(0, (sum, r) => sum + r.steps);
    final totalKm = records.fold<double>(0, (sum, r) => sum + r.distanceKm);
    final totalCal = records.fold<double>(0, (sum, r) => sum + r.calories);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _buildSummaryCard(
            totalSteps: totalSteps,
            totalKm: totalKm,
            totalCal: totalCal,
            count: records.length,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (ctx, i) => _RecordCard(
              record: records[i],
              onEdit: () => _showEditDialog(ctx, records[i]),
              onDelete: () => ctx
                  .read<ActivityRecordBloc>()
                  .add(DeleteRecord(records[i].id)),
            ),
            childCount: records.length,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }

  Widget _buildSummaryCard({
    required int totalSteps,
    required double totalKm,
    required double totalCal,
    required int count,
  }) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFFFF6B35).withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            '$count sesiones registradas',
            style: const TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _SummaryStat(
                icon: Icons.directions_walk,
                value: '$totalSteps',
                label: 'pasos',
              ),
              Container(width: 1, height: 36, color: const Color(0xFF2A2A2A)),
              _SummaryStat(
                icon: Icons.straighten,
                value: totalKm.toStringAsFixed(2),
                label: 'km',
              ),
              Container(width: 1, height: 36, color: const Color(0xFF2A2A2A)),
              _SummaryStat(
                icon: Icons.local_fire_department,
                value: totalCal.toStringAsFixed(0),
                label: 'cal',
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _confirmClearAll(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('¿Borrar todo?',
            style: TextStyle(color: Colors.white)),
        content: const Text('Esta acción no se puede deshacer.',
            style: TextStyle(color: Color(0xFF9E9E9E))),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar',
                style: TextStyle(color: Color(0xFF6B6B6B))),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              context.read<ActivityRecordBloc>().add(ClearAllRecords());
              Navigator.pop(context);
            },
            child: const Text('Borrar',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showEditDialog(BuildContext context, ActivityRecord record) {
    String selectedType = record.activityType;

    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Editar registro',
            style: TextStyle(color: Colors.white)),
        content: StatefulBuilder(
          builder: (context, setDialogState) {
            return DropdownButtonFormField<String>(
              value: selectedType,
              dropdownColor: const Color(0xFF2A2A2A),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Tipo de actividad',
                labelStyle: const TextStyle(color: Color(0xFF9E9E9E)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFF2A2A2A)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFFF6B35)),
                ),
              ),
              items: const [
                DropdownMenuItem(value: 'walking', child: Text('Caminando')),
                DropdownMenuItem(value: 'running', child: Text('Corriendo')),
                DropdownMenuItem(
                    value: 'stationary', child: Text('Estacionario')),
              ],
              onChanged: (val) {
                if (val != null) setDialogState(() => selectedType = val);
              },
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancelar',
                style: TextStyle(color: Color(0xFF6B6B6B))),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6B35)),
            onPressed: () {
              context.read<ActivityRecordBloc>().add(
                    UpdateRecord(record.copyWith(activityType: selectedType)),
                  );
              Navigator.pop(ctx);
            },
            child: const Text('Guardar',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class _SummaryStat extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _SummaryStat({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFFFF6B35), size: 20),
        const SizedBox(height: 6),
        Text(value,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text(label,
            style:
                const TextStyle(color: Color(0xFF6B6B6B), fontSize: 12)),
      ],
    );
  }
}

class _RecordCard extends StatelessWidget {
  final ActivityRecord record;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _RecordCard({
    required this.record,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(record.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.red.withOpacity(0.5)),
        ),
        child: const Icon(Icons.delete, color: Colors.red),
      ),
      confirmDismiss: (_) async {
        return await showDialog<bool>(
              context: context,
              builder: (_) => AlertDialog(
                backgroundColor: const Color(0xFF1A1A1A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: const Text('¿Eliminar registro?',
                    style: TextStyle(color: Colors.white)),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancelar',
                        style: TextStyle(color: Color(0xFF6B6B6B))),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Eliminar',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ) ??
            false;
      },
      onDismissed: (_) => onDelete(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFF2A2A2A), width: 1),
        ),
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: _typeColor(record.activityType).withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _typeIcon(record.activityType),
              color: _typeColor(record.activityType),
              size: 22,
            ),
          ),
          title: Text(
            _typeLabel(record.activityType),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                '${record.steps} pasos · ${record.distanceKm.toStringAsFixed(2)} km · ${record.calories.toStringAsFixed(0)} cal',
                style: const TextStyle(
                    fontSize: 12, color: Color(0xFF9E9E9E)),
              ),
              Text(
                _formatDate(record.startedAt),
                style: const TextStyle(
                    fontSize: 11, color: Color(0xFF6B6B6B)),
              ),
              if (record.hadFallDetected)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red.withOpacity(0.4)),
                  ),
                  child: const Text(
                    '⚠ Caída detectada',
                    style: TextStyle(fontSize: 11, color: Colors.red),
                  ),
                ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                record.durationLabel,
                style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9E9E9E),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 4),
              PopupMenuButton<String>(
                color: const Color(0xFF2A2A2A),
                icon: const Icon(Icons.more_vert,
                    color: Color(0xFF6B6B6B), size: 20),
                onSelected: (v) {
                  if (v == 'edit') onEdit();
                  if (v == 'delete') onDelete();
                },
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Editar',
                        style: TextStyle(color: Colors.white)),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Eliminar',
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _typeIcon(String type) {
    switch (type) {
      case 'running':
        return Icons.directions_run;
      case 'walking':
        return Icons.directions_walk;
      default:
        return Icons.accessibility_new;
    }
  }

  Color _typeColor(String type) {
    switch (type) {
      case 'running':
        return const Color(0xFFFF6B35);
      case 'walking':
        return const Color(0xFF4CAF50);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String _typeLabel(String type) {
    switch (type) {
      case 'running':
        return 'Corriendo';
      case 'walking':
        return 'Caminando';
      default:
        return 'Estacionario';
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.day}/${dt.month}/${dt.year} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\accelerometer_datasource.dart
================================================

import 'dart:math';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/entities/step_data.dart';

/// DataSource para acelerómetro
/// ANTES: EventChannel personalizado hacia código nativo Kotlin
/// AHORA: sensors_plus directamente (mismo plugin, sin capa nativa custom)
///
/// sensors_plus expone accelerometerEventStream() que ya es un broadcast stream
/// de SensorEvent con x, y, z en m/s².
/// Sobre esos datos crudos calculamos pasos y tipo de actividad en Dart.
abstract class AccelerometerDataSource {
  Stream<StepData> get stepStream;
  Future<void> startCounting();
  Future<void> stopCounting();
  Future<bool> requestPermissions();
}

class AccelerometerDataSourceImpl implements AccelerometerDataSource {
  int _stepCount = 0;
  DateTime? _lastStepTime;

  // Ajustado para Infinix Note 40 Pro
  static const double _stepThreshold = 14.5;
  static const Duration _stepCooldown = Duration(milliseconds: 400);

  /// Transforma el stream crudo de acelerómetro en StepData
  /// con conteo de pasos y clasificación de actividad.
  late final Stream<StepData> _stream = accelerometerEventStream().map((event) {
    final double magnitude = sqrt(
      event.x * event.x +
          event.y * event.y +
          event.z * event.z,
    );

    final now = DateTime.now();

    // Detectar paso por umbral de magnitud y cooldown
    if (magnitude > _stepThreshold) {
      if (_lastStepTime == null ||
          now.difference(_lastStepTime!) > _stepCooldown) {
        _stepCount++;
        _lastStepTime = now;
      }
    }

    // Clasificar actividad según magnitud
    final ActivityType type;

    if (magnitude < 11.0) {
      type = ActivityType.stationary;
    } else if (magnitude < 20.0) {
      type = ActivityType.walking;
    } else {
      type = ActivityType.running;
    }

    return StepData(
      stepCount: _stepCount,
      activityType: type,
      magnitude: magnitude,
    );
  }).asBroadcastStream();

  @override
  Stream<StepData> get stepStream => _stream;

  @override
  Future<void> startCounting() async {
    _stepCount = 0;
    _lastStepTime = null;
  }

  @override
  Future<void> stopCounting() async {
    // sensors_plus se cancela cancelando la suscripción al stream
  }

  @override
  Future<bool> requestPermissions() async {
    final activityStatus = await Permission.activityRecognition.request();
    final sensorsStatus = await Permission.sensors.request();

    return activityStatus.isGranted && sensorsStatus.isGranted;
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\data\datasources\biometric_datasource.dart
================================================

import 'package:local_auth/local_auth.dart';
import '../../domain/entities/auth_result.dart';

/// DataSource para autenticación biométrica
/// ANTES: MethodChannel manual hacia Android nativo
/// AHORA: Plugin local_auth (maneja iOS y Android automáticamente)
abstract class BiometricDataSource {
  Future<bool> canAuthenticate();
  Future<AuthResult> authenticate();
}

class BiometricDataSourceImpl implements BiometricDataSource {
  /// local_auth abstrae toda la comunicación con la plataforma
  final LocalAuthentication _auth = LocalAuthentication();

  @override
  Future<bool> canAuthenticate() async {
    try {
      // Verifica si el dispositivo soporta biometría
      final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
      final bool canAuthenticate = await _auth.isDeviceSupported();
      return canAuthenticateWithBiometrics && canAuthenticate;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<AuthResult> authenticate() async {
    try {
      final bool didAuthenticate = await _auth.authenticate(
        localizedReason: 'Autentícate para acceder a Fitness Tracker',
        options: const AuthenticationOptions(
          biometricOnly: false, // Permite PIN como fallback
          stickyAuth: true,     // Mantiene el diálogo si el usuario cambia de app
        ),
      );

      return AuthResult(
        success: didAuthenticate,
        message: didAuthenticate
            ? 'Autenticación exitosa'
            : 'Autenticación cancelada',
      );
    } catch (e) {
      return AuthResult(
        success: false,
        message: 'Error de autenticación: $e',
      );
    }
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\domain\entities\auth_result.dart
================================================

import 'package:equatable/equatable.dart';

/// Resultado de la autenticación biométrica
class AuthResult extends Equatable {
  final bool success;
  final String? message;

  const AuthResult({
    required this.success,
    this.message,
  });

  @override
  List<Object?> get props => [success, message];
}


          
================================================
📄 ARCHIVO: lib\features\auth\domain\entities\step_data.dart
================================================

import 'package:equatable/equatable.dart';

/// Tipos de actividad detectados
enum ActivityType {
  stationary,  // Quieto
  walking,     // Caminando
  running,     // Corriendo
}

/// Datos del acelerómetro
class StepData extends Equatable {
  final int stepCount;
  final ActivityType activityType;
  final double magnitude;

  const StepData({
    required this.stepCount,
    required this.activityType,
    required this.magnitude,
  });

  /// Calorías estimadas (0.04 cal por paso)
  double get estimatedCalories => stepCount * 0.04;

  /// Factory para crear desde Map del Platform Channel
  factory StepData.fromMap(Map<dynamic, dynamic> map) {
    final activityTypeString = map['activityType'] as String;

    return StepData(
      stepCount: map['stepCount'] as int,
      activityType: _parseActivityType(activityTypeString),
      magnitude: (map['magnitude'] as num).toDouble(),
    );
  }

  static ActivityType _parseActivityType(String type) {
    switch (type) {
      case 'walking':
        return ActivityType.walking;
      case 'running':
        return ActivityType.running;
      default:
        return ActivityType.stationary;
    }
  }

  @override
  List<Object> get props => [stepCount, activityType, magnitude];
}


          
================================================
📄 ARCHIVO: lib\features\auth\domain\usecases\authenticate_user.dart
================================================

import '../entities/auth_result.dart';
import '../../data/datasources/biometric_datasource.dart';

/// Use Case: lógica de negocio de autenticación
class AuthenticateUser {
  final BiometricDataSource dataSource;

  AuthenticateUser(this.dataSource);

  Future<AuthResult> call() async {
    // Verificar si el dispositivo soporta biometría
    final canAuth = await dataSource.canAuthenticate();

    if (!canAuth) {
      return const AuthResult(
        success: false,
        message: 'Biometría no disponible',
      );
    }

    // Autenticar
    return await dataSource.authenticate();
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\presentation\bloc\auth_bloc.dart
================================================

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/authenticate_user.dart';
import '../../domain/entities/auth_result.dart';

// EVENTS
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticateRequested extends AuthEvent {}

// STATES
abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthSuccess extends AuthState {
  final AuthResult result;
  AuthSuccess(this.result);

  @override
  List<Object> get props => [result];
}
class AuthFailure extends AuthState {
  final String message;
  AuthFailure(this.message);

  @override
  List<Object> get props => [message];
}

// BLOC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticateUser authenticateUser;

  AuthBloc(this.authenticateUser) : super(AuthInitial()) {
    on<AuthenticateRequested>(_onAuthenticateRequested);
  }

  Future<void> _onAuthenticateRequested(
    AuthenticateRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    try {
      final result = await authenticateUser();

      if (result.success) {
        emit(AuthSuccess(result));
      } else {
        emit(AuthFailure(result.message ?? 'Error desconocido'));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\presentation\pages\login_page.dart
================================================

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onAuthSuccess;

  const LoginPage({super.key, required this.onAuthSuccess});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            onAuthSuccess();
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    // Logo
                    Container(
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A1A1A),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFFF6B35).withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                      child: const Icon(
                        Icons.fitness_center,
                        size: 64,
                        color: Color(0xFFFF6B35),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Fitness Tracker',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Tu compañero de entrenamiento',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF6B6B6B),
                      ),
                    ),
                    const Spacer(),
                    // Botón
                    if (state is AuthLoading)
                      const CircularProgressIndicator(
                        color: Color(0xFFFF6B35),
                      )
                    else
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(AuthenticateRequested());
                          },
                          icon: const Icon(Icons.fingerprint, size: 26),
                          label: const Text(
                            'Autenticar con Huella',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF6B35),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 48),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\steps\presentation\widgets\step_counter_widget.dart
================================================

import 'package:flutter/material.dart';
import 'dart:async';
import '../../../data/datasources/accelerometer_datasource.dart';
import '../../../domain/entities/step_data.dart';
import '../../../../../injection_container.dart';

/// Widget que muestra el contador de pasos
///
/// EXPLICACIÓN DIDÁCTICA:
/// - Usa StreamSubscription para escuchar el EventChannel
/// - Actualiza UI cada vez que llegan nuevos datos
class StepCounterWidget extends StatefulWidget {
  const StepCounterWidget({super.key});

  @override
  State<StepCounterWidget> createState() => _StepCounterWidgetState();
}

class _StepCounterWidgetState extends State<StepCounterWidget> {
  final AccelerometerDataSource _dataSource = sl<AccelerometerDataSource>();

  StreamSubscription<StepData>? _subscription;
  StepData? _currentData;
  bool _isTracking = false;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  void _toggleTracking() {
    if (_isTracking) {
      _stopTracking();
    } else {
      _startTracking();
    }
  }

  void _startTracking() async {
    // Solicitar permisos
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Permisos de sensores denegados'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    await _dataSource.startCounting();

    // SUSCRIBIRSE AL STREAM
    _subscription = _dataSource.stepStream.listen(
      (data) {
        setState(() {
          _currentData = data;
        });
      },
      onError: (Object error) {
        print('Error en stream: $error');
      },
    );

    setState(() {
      _isTracking = true;
    });
  }

  void _stopTracking() async {
    await _dataSource.stopCounting();
    _subscription?.cancel();

    setState(() {
      _isTracking = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Contador de Pasos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: _toggleTracking,
                  icon: Icon(_isTracking ? Icons.stop : Icons.play_arrow),
                  label: Text(_isTracking ? 'Detener' : 'Iniciar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isTracking ? Colors.red : Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const Divider(),

            // Contador
            Text(
              '${_currentData?.stepCount ?? 0}',
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6366F1),
              ),
            ),
            const Text('pasos', style: TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 16),

            // Indicadores
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildInfoChip(
                  icon: _getActivityIcon(_currentData?.activityType),
                  label: _getActivityLabel(_currentData?.activityType),
                  color: Colors.blue,
                ),
                _buildInfoChip(
                  icon: Icons.local_fire_department,
                  label: '${_currentData?.estimatedCalories.toStringAsFixed(1) ?? "0"} cal',
                  color: Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  IconData _getActivityIcon(ActivityType? type) {
    switch (type) {
      case ActivityType.walking:
        return Icons.directions_walk;
      case ActivityType.running:
        return Icons.directions_run;
      case ActivityType.stationary:
        return Icons.accessibility_new;
      default:
        return Icons.help_outline;
    }
  }

  String _getActivityLabel(ActivityType? type) {
    switch (type) {
      case ActivityType.walking:
        return 'Caminando';
      case ActivityType.running:
        return 'Corriendo';
      case ActivityType.stationary:
        return 'Quieto';
      default:
        return 'Detectando...';
    }
  }
}


          
================================================
📄 ARCHIVO: lib\features\auth\tracking\data\datasources\gps_datasource.dart
================================================

import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location_point.dart';

/// DataSource para GPS
/// ANTES: MethodChannel + EventChannel custom hacia Kotlin
/// AHORA: Plugin geolocator (maneja permisos, settings y stream automáticamente)
abstract class GpsDataSource {
  Future<LocationPoint?> getCurrentLocation();
  Stream<LocationPoint> get locationStream;
  Future<bool> isGpsEnabled();
  Future<bool> requestPermissions();
  Future<bool> openLocationSettings();
}

class GpsDataSourceImpl implements GpsDataSource {
  /// Configuración del stream de posición
  static const LocationSettings _locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 2, // Actualizar cada 2 metros de movimiento
  );

  late final Stream<LocationPoint> _sharedStream = Geolocator
      .getPositionStream(locationSettings: _locationSettings)
      .map(_positionToPoint)
      .asBroadcastStream();

  @override
  Stream<LocationPoint> get locationStream => _sharedStream;

  @override
  Future<LocationPoint?> getCurrentLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      return _positionToPoint(position);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> isGpsEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<bool> openLocationSettings() async {
    return await Geolocator.openLocationSettings();
  }

  @override
  Future<bool> requestPermissions() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      await Geolocator.openAppSettings();
      return false;
    }

    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Convierte Position de geolocator a nuestra entidad LocationPoint
  LocationPoint _positionToPoint(Position position) {
    return LocationPoint(
      latitude: position.latitude,
      longitude: position.longitude,
      altitude: position.altitude,
      speed: position.speed,
      accuracy: position.accuracy,
      timestamp: position.timestamp,
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\auth\tracking\domain\entities\location_point.dart
================================================

import 'package:equatable/equatable.dart';
import 'dart:math' as math;

/// Punto de ubicación GPS
class LocationPoint extends Equatable {
  final double latitude;
  final double longitude;
  final double altitude;
  final double speed;
  final double accuracy;
  final DateTime timestamp;

  const LocationPoint({
    required this.latitude,
    required this.longitude,
    this.altitude = 0,
    this.speed = 0,
    this.accuracy = 0,
    required this.timestamp,
  });

  factory LocationPoint.fromMap(Map<dynamic, dynamic> map) {
    return LocationPoint(
      latitude: (map['latitude'] as num).toDouble(),
      longitude: (map['longitude'] as num).toDouble(),
      altitude: (map['altitude'] as num?)?.toDouble() ?? 0,
      speed: (map['speed'] as num?)?.toDouble() ?? 0,
      accuracy: (map['accuracy'] as num?)?.toDouble() ?? 0,
      timestamp: DateTime.now(),
    );
  }

  /// Calcular distancia a otro punto (fórmula Haversine)
  double distanceTo(LocationPoint other) {
    const earthRadius = 6371000.0; // metros

    final lat1Rad = latitude * math.pi / 180;
    final lat2Rad = other.latitude * math.pi / 180;
    final deltaLat = (other.latitude - latitude) * math.pi / 180;
    final deltaLon = (other.longitude - longitude) * math.pi / 180;

    final a = math.sin(deltaLat / 2) * math.sin(deltaLat / 2) +
              math.cos(lat1Rad) * math.cos(lat2Rad) *
              math.sin(deltaLon / 2) * math.sin(deltaLon / 2);

    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

    return earthRadius * c;
  }

  @override
  List<Object?> get props => [latitude, longitude, timestamp];
}

/// Representa una ruta completa
class Route {
  final List<LocationPoint> points;
  final DateTime startTime;
  DateTime? endTime;

  Route({
    List<LocationPoint>? points,
    DateTime? startTime,
  }) : points = points ?? [],
       startTime = startTime ?? DateTime.now();

  void addPoint(LocationPoint point) {
    points.add(point);
  }

  void finish() {
    endTime = DateTime.now();
  }

  double get totalDistance {
    if (points.length < 2) return 0;

    double distance = 0;
    for (int i = 1; i < points.length; i++) {
      distance += points[i - 1].distanceTo(points[i]);
    }
    return distance;
  }

  double get distanceKm => totalDistance / 1000;

  Duration get duration {
    final end = endTime ?? DateTime.now();
    return end.difference(startTime);
  }

  double get averageSpeed {
    final hours = duration.inSeconds / 3600;
    if (hours == 0) return 0;
    return distanceKm / hours;
  }

  double get estimatedCalories => distanceKm * 60;
}


          
================================================
📄 ARCHIVO: lib\features\auth\tracking\presentation\widgets\route_map_widget.dart
================================================


import 'package:flutter/material.dart' hide Route;
import 'dart:async';
import '../../data/datasources/gps_datasource.dart';
import '../../domain/entities/location_point.dart';
import '../../../../../injection_container.dart';

class RouteMapWidget extends StatefulWidget {
  const RouteMapWidget({super.key});

  @override
  State<RouteMapWidget> createState() => _RouteMapWidgetState();
}

class _RouteMapWidgetState extends State<RouteMapWidget> {
  final GpsDataSource _dataSource = sl<GpsDataSource>();
  Route _route = Route();
  GpsKalmanFilter _kalmanFilter = GpsKalmanFilter();

  StreamSubscription<LocationPoint>? _subscription;
  bool _isTracking = false;
  String _statusMessage = 'Presiona Iniciar';

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<void> _toggleTracking() async {
    if (_isTracking) {
      _stopTracking();
    } else {
      await _startTracking();
    }
  }

  Future<void> _startTracking() async {
    final hasPermission = await _dataSource.requestPermissions();
    if (!hasPermission) {
      setState(() {
        _statusMessage = 'Permisos denegados';
      });
      _showPermissionDeniedDialog();
      return;
    }

    final gpsEnabled = await _dataSource.isGpsEnabled();
    if (!gpsEnabled) {
      setState(() {
        _statusMessage = 'GPS desactivado';
      });
      final shouldOpen = await _showGpsDisabledDialog();
      if (shouldOpen) {
        await _dataSource.openLocationSettings();
      }
      return;
    }

    setState(() {
      _route = Route();
      _kalmanFilter = GpsKalmanFilter();
      _isTracking = true;
      _statusMessage = 'Buscando señal GPS...';
    });

    // Obtener la ubicación inicial (última conocida) de forma inmediata
    final initialPoint = await _dataSource.getCurrentLocation();
    if (initialPoint != null && _isTracking) {
      // Solo usar punto inicial si tiene buena precisión
      if (initialPoint.accuracy <= 35) {
        final filteredInitial = _kalmanFilter.filter(initialPoint);
        setState(() {
          _route.addPoint(filteredInitial);
          _statusMessage = 'Tracking - ${_route.points.length} puntos';
        });
      }
    }

    _subscription = _dataSource.locationStream.listen(
      (LocationPoint point) {
        print('📍 GPS: ${point.latitude}, ${point.longitude}, acc=${point.accuracy}m');

        // Ignorar puntos de muy baja precisión (como redes de celular en interiores)
        if (point.accuracy > 35) {
          print('⚠️ GPS: Ignorando punto por baja precisión (${point.accuracy}m)');
          return;
        }

        // Filtrar coordenada usando filtro de Kalman
        final filteredPoint = _kalmanFilter.filter(point);

        if (_route.points.isEmpty) {
          setState(() {
            _route.addPoint(filteredPoint);
            _statusMessage = 'Tracking - ${_route.points.length} puntos';
          });
        } else {
          final lastPoint = _route.points.last;
          final distance = lastPoint.distanceTo(filteredPoint);

          if (distance >= 1.5) {
            setState(() {
              _route.addPoint(filteredPoint);
              _statusMessage = 'Tracking - ${_route.points.length} puntos';
            });
          }
        }
      },
      onError: (Object error) {
        print('❌ GPS Error: $error');
        setState(() {
          _statusMessage = 'Error: $error';
        });
      },
    );
  }

  void _stopTracking() {
    _subscription?.cancel();
    _route.finish();

    setState(() {
      _isTracking = false;
      _statusMessage = 'Ruta finalizada';
    });
  }

  Future<bool> _showGpsDisabledDialog() async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.location_off, color: Colors.red),
              SizedBox(width: 8),
              Text('GPS Desactivado'),
            ],
          ),
          content: const Text(
            'El servicio de ubicación (GPS) está desactivado. Para poder registrar tu ruta, necesitas activarlo en la configuración de tu dispositivo.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6366F1),
                foregroundColor: Colors.white,
              ),
              child: const Text('Activar'),
            ),
          ],
        );
      },
    ) ?? false;
  }

  void _showPermissionDeniedDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.security, color: Colors.red),
              SizedBox(width: 8),
              Text('Permiso Denegado'),
            ],
          ),
          content: const Text(
            'El permiso de ubicación es indispensable para trazar tu ruta. Por favor, actívalo en los ajustes de la aplicación.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ruta GPS',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton.icon(
                      onPressed: _toggleTracking,
                      icon: Icon(_isTracking ? Icons.stop : Icons.play_arrow),
                      label: Text(_isTracking ? 'Detener' : 'Iniciar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _isTracking ? Colors.red : Colors.green,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  _statusMessage,
                  style: TextStyle(
                    color: _isTracking ? Colors.green : Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // Mapa (Canvas)
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomPaint(
                painter: RoutePainter(route: _route),
                size: Size.infinite,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Métricas
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMetric(
                  icon: Icons.straighten,
                  value: '${_route.distanceKm.toStringAsFixed(2)} km',
                  label: 'Distancia',
                ),
                _buildMetric(
                  icon: Icons.timer,
                  value: _formatDuration(_route.duration),
                  label: 'Tiempo',
                ),
                _buildMetric(
                  icon: Icons.speed,
                  value: '${_route.averageSpeed.toStringAsFixed(1)} km/h',
                  label: 'Velocidad',
                ),
                _buildMetric(
                  icon: Icons.local_fire_department,
                  value: '${_route.estimatedCalories.toStringAsFixed(0)}',
                  label: 'Calorías',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetric({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFF6366F1)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      ],
    );
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    }
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

/// CustomPainter para dibujar la ruta
class RoutePainter extends CustomPainter {
  final Route route;

  RoutePainter({required this.route});

  @override
  void paint(Canvas canvas, Size size) {
    if (route.points.isEmpty) {
      final textPainter = TextPainter(
        text: const TextSpan(
          text: 'Sin datos de ruta',
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
        canvas,
        Offset(
          (size.width - textPainter.width) / 2,
          (size.height - textPainter.height) / 2,
        ),
      );
      return;
    }

    // Calcular bounds
    double minLat = route.points.first.latitude;
    double maxLat = route.points.first.latitude;
    double minLon = route.points.first.longitude;
    double maxLon = route.points.first.longitude;

    for (final point in route.points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLon) minLon = point.longitude;
      if (point.longitude > maxLon) maxLon = point.longitude;
    }

    final padding = 20.0;
    final drawWidth = size.width - padding * 2;
    final drawHeight = size.height - padding * 2;

    Offset toPixel(LocationPoint point) {
      final latRange = maxLat - minLat;
      final lonRange = maxLon - minLon;

      final x = lonRange == 0
          ? drawWidth / 2
          : ((point.longitude - minLon) / lonRange) * drawWidth;
      final y = latRange == 0
          ? drawHeight / 2
          : ((maxLat - point.latitude) / latRange) * drawHeight;

      return Offset(x + padding, y + padding);
    }

    // Dibujar línea
    final linePaint = Paint()
      ..color = const Color(0xFF6366F1)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    path.moveTo(toPixel(route.points.first).dx, toPixel(route.points.first).dy);

    for (int i = 1; i < route.points.length; i++) {
      final pixel = toPixel(route.points[i]);
      path.lineTo(pixel.dx, pixel.dy);
    }

    canvas.drawPath(path, linePaint);

    // Punto inicio (verde)
    final startPaint = Paint()..color = Colors.green;
    canvas.drawCircle(toPixel(route.points.first), 8, startPaint);

    // Punto final (rojo)
    final endPaint = Paint()..color = Colors.red;
    canvas.drawCircle(toPixel(route.points.last), 8, endPaint);
  }

  @override
  bool shouldRepaint(RoutePainter oldDelegate) {
    return true;
  }
}

/// Filtro de Kalman unidimensional en tiempo real para Latitud y Longitud
///
/// EXPLICACIÓN DIDÁCTICA:
/// - Reduce las oscilaciones (ruido estático de ±2-5m) del GPS al caminar en línea recta.
/// - Ajusta dinámicamente el factor de suavizado en función de la precisión (accuracy) reportada.
/// - Cuando la precisión del GPS es alta (R pequeño), confía en el nuevo punto.
/// - Cuando la precisión es baja (R grande), suaviza más la coordenada apoyándose en el histórico.
class GpsKalmanFilter {
  double? _lat;
  double? _lng;
  double _variance = -1.0;

  // Ruido de proceso estimado por segundo en grados cuadrados.
  // Equivale a ~2 metros de movimiento esperado por segundo: (2 / 111111.0)^2 ≈ 3.24e-10
  static const double _processNoise = 3.24e-10;

  LocationPoint filter(LocationPoint point) {
    if (_lat == null || _lng == null || _variance < 0) {
      _lat = point.latitude;
      _lng = point.longitude;
      _variance = (point.accuracy / 111111.0) * (point.accuracy / 111111.0);
      return point;
    }

    // Predicción del estado futuro (la incertidumbre/varianza aumenta por el ruido de proceso)
    double predictedVariance = _variance + _processNoise;

    // Convertir precisión en metros a grados cuadrados para la varianza de medición (R)
    double accuracyDegrees = point.accuracy / 111111.0;
    double r = accuracyDegrees * accuracyDegrees;

    // Calcular la Ganancia de Kalman (K)
    double k = predictedVariance / (predictedVariance + r);

    // Actualizar estimación del estado (Latitud y Longitud)
    _lat = _lat! + k * (point.latitude - _lat!);
    _lng = _lng! + k * (point.longitude - _lng!);
    _variance = (1.0 - k) * predictedVariance;

    return LocationPoint(
      latitude: _lat!,
      longitude: _lng!,
      altitude: point.altitude,
      speed: point.speed,
      accuracy: point.accuracy,
      timestamp: point.timestamp,
    );
  }
}


          
================================================
📄 ARCHIVO: lib\injection_container.dart
================================================

import 'package:get_it/get_it.dart';
import 'features/activity/data/datasources/activity_datasource_impl.dart';
import 'features/activity/data/services/tts_service.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/auth/data/datasources/accelerometer_datasource.dart';
import 'features/auth/tracking/data/datasources/gps_datasource.dart';
import 'features/activity_record/data/repositories/activity_record_repository.dart';
import 'features/activity_record/presentation/bloc/activity_record_bloc.dart';

final sl = GetIt.instance;

void initDependencies() {
  // Servicios
  sl.registerLazySingleton<TtsService>(() => TtsService());

  // Datasources (ahora usando plugins, misma interfaz)
  sl.registerLazySingleton<AccelerometerDataSource>(
    () => AccelerometerDataSourceImpl(),
  );
  sl.registerLazySingleton<GpsDataSource>(
    () => GpsDataSourceImpl(),
  );
  sl.registerLazySingleton<ActivityDataSourceImpl>(
    () => ActivityDataSourceImpl(sl<AccelerometerDataSource>()),
  );

  // CRUD - Historial
  sl.registerLazySingleton<ActivityRecordRepository>(
    () => ActivityRecordRepository(),
  );

  // BLoCs
  sl.registerFactory<ActivityBloc>(
    () => ActivityBloc(
      dataSource: sl<ActivityDataSourceImpl>(),
      ttsService: sl<TtsService>(),
    ),
  );
  sl.registerFactory<ActivityRecordBloc>(
    () => ActivityRecordBloc(sl<ActivityRecordRepository>()),
  );
}

          
================================================
📄 ARCHIVO: lib\main.dart
================================================

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart';

import 'features/auth/data/datasources/biometric_datasource.dart';
import 'features/auth/domain/usecases/authenticate_user.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/steps/presentation/widgets/step_counter_widget.dart';
import 'features/auth/tracking/presentation/widgets/route_map_widget.dart';
import 'features/activity/presentation/bloc/activity_bloc.dart';
import 'features/activity/presentation/pages/activity_page.dart';
import 'features/activity_record/presentation/bloc/activity_record_bloc.dart';
import 'features/activity_record/presentation/pages/history_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    final biometricDataSource = BiometricDataSourceImpl();
    final authenticateUser = AuthenticateUser(biometricDataSource);

    return MaterialApp(
      title: 'Fitness Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFF6B35),
          secondary: Color(0xFFFF8C5A),
          surface: Color(0xFF1A1A1A),
        ),
        useMaterial3: true,
        cardTheme: CardThemeData(
          elevation: 0,
          color: const Color(0xFF1A1A1A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: const Color(0xFF1A1A1A),
          indicatorColor: const Color(0xFFFF6B35).withOpacity(0.2),
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                color: Color(0xFFFF6B35),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              );
            }
            return const TextStyle(color: Color(0xFF6B6B6B), fontSize: 12);
          }),
          iconTheme: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const IconThemeData(color: Color(0xFFFF6B35));
            }
            return const IconThemeData(color: Color(0xFF6B6B6B));
          }),
        ),
      ),
      home: BlocProvider(
        create: (_) => AuthBloc(authenticateUser),
        child: const AuthWrapper(),
      ),
    );
  }
}

// ─── AUTH WRAPPER ────────────────────────────────────────────────────────────

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool _isAuthenticated = false;

  @override
  Widget build(BuildContext context) {
    if (_isAuthenticated) return const MainPage();
    return LoginPage(
      onAuthSuccess: () => setState(() => _isAuthenticated = true),
    );
  }
}

// ─── MAIN PAGE CON NAVEGACIÓN ────────────────────────────────────────────────

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const _DashboardTab(),
          BlocProvider(
            create: (_) => sl<ActivityBloc>(),
            child: const ActivityPage(),
          ),
          const HistoryPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (i) => setState(() => _currentIndex = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.directions_run_outlined),
            selectedIcon: Icon(Icons.directions_run),
            label: 'Actividad',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history),
            label: 'Historial',
          ),
        ],
      ),
    );
  }
}

// ─── DASHBOARD ───────────────────────────────────────────────────────────────

class _DashboardTab extends StatelessWidget {
  const _DashboardTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildHeader()),
          SliverToBoxAdapter(
            child: BlocProvider(
              create: (_) => sl<ActivityRecordBloc>()..add(LoadRecords()),
              child: BlocBuilder<ActivityRecordBloc, ActivityRecordState>(
                builder: (context, state) {
                  int steps = 0;
                  double km = 0;
                  double cal = 0;
                  int sessions = 0;
                  if (state is ActivityRecordLoaded &&
                      state.records.isNotEmpty) {
                    final today = state.records.where((r) {
                      final now = DateTime.now();
                      return r.startedAt.year == now.year &&
                          r.startedAt.month == now.month &&
                          r.startedAt.day == now.day;
                    }).toList();
                    steps = today.fold(0, (s, r) => s + r.steps);
                    km = today.fold(0.0, (s, r) => s + r.distanceKm);
                    cal = today.fold(0.0, (s, r) => s + r.calories);
                    sessions = today.length;
                  }
                  return _buildStatsSection(
                    steps: steps,
                    km: km,
                    cal: cal,
                    sessions: sessions,
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: StepCounterWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: RouteMapWidget(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    final hour = DateTime.now().hour;
    final greeting = hour < 12
        ? '¡Buenos días!'
        : hour < 18
            ? '¡Buenas tardes!'
            : '¡Buenas noches!';

    return Container(
      padding: const EdgeInsets.fromLTRB(20, 56, 20, 24),
      decoration: const BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting,
                style: const TextStyle(
                  color: Color(0xFF9E9E9E),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Fitness Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFFF6B35).withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.fitness_center,
              color: Color(0xFFFF6B35),
              size: 26,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsSection({
    required int steps,
    required double km,
    required double cal,
    required int sessions,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resumen de hoy',
            style: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0xFFFF6B35).withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$steps',
                      style: const TextStyle(
                        color: Color(0xFFFF6B35),
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8, left: 6),
                      child: Text(
                        'pasos',
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _MiniStat(
                      icon: Icons.straighten,
                      value: '${km.toStringAsFixed(2)} km',
                      label: 'Distancia',
                    ),
                    Container(
                      width: 1,
                      height: 36,
                      color: const Color(0xFF2A2A2A),
                    ),
                    _MiniStat(
                      icon: Icons.local_fire_department,
                      value: '${cal.toStringAsFixed(0)} cal',
                      label: 'Calorías',
                    ),
                    Container(
                      width: 1,
                      height: 36,
                      color: const Color(0xFF2A2A2A),
                    ),
                    _MiniStat(
                      icon: Icons.repeat,
                      value: '$sessions',
                      label: 'Sesiones',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _MiniStat({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFFFF6B35), size: 18),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF6B6B6B),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

          
================================================
📄 ARCHIVO: pubspec.yaml
================================================

name: fitness_tracker
description: App de fitness con detección de actividad y voz
version: 1.0.0
publish_to: 'none'

environment:
  sdk: '>=3.2.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # Gestión de estado
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5

  # Inyección de dependencias
  get_it: ^7.6.4

  # ── PLUGINS (reemplazan Platform Channels) ──────────────────
  # Autenticación biométrica (reemplaza biometric_datasource manual)
  local_auth: ^2.3.0

  # GPS y ubicación (reemplaza gps_datasource con EventChannel/MethodChannel)
  geolocator: ^13.0.2
  permission_handler: ^11.3.1

  # Acelerómetro y sensores (ya se usaba, ahora es la única fuente)
  sensors_plus: ^5.0.1

  # Síntesis de voz
  flutter_tts: ^4.0.2

  # ── CRUD / Persistencia local ────────────────────────────────
  shared_preferences: ^2.3.2

  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.0

flutter:
  uses-material-design: true

          
================================================
📄 ARCHIVO: README.md
================================================

# fitness_tracker

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


          
================================================
📄 ARCHIVO: test\widget_test.dart
================================================

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fitness_tracker/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FitnessApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}


