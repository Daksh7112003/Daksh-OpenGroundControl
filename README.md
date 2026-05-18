# Daksh OpenGroundControl

Daksh OpenGroundControl is a custom, Qt-based ground control station project for drones. It is designed as a lightweight, extensible alternative to QGroundControl, built with Qt Quick and CMake for cross-platform deployment.

## Overview

- Framework: Qt 6 (Qt Quick)
- Build system: CMake
- Languages: C++, QML
- Current state: basic application shell that launches a QML window

## Goals

- Provide a modern, responsive ground control interface
- Support cross-platform desktop targets: Windows, Linux, macOS
- Enable future extensions for telemetry, mission planning, and autopilot integration

## Project layout

- `CMakeLists.txt` - project build configuration
- `main.cpp` - Qt application startup and QML engine initialization
- `main.qml` - Qt Quick UI entry point
- `.gitignore` - ignored generated files and temporary build directories

## Build and run

### Prerequisites

- Qt 6 (with Qt Quick module)
- CMake 3.16 or newer
- A C++ compiler supported by Qt

### Build using Qt Creator

1. Open `CMakeLists.txt` in Qt Creator
2. Configure the project with a Qt 6 kit
3. Build and run the application

### Build from command line

```bash
mkdir -p build
cd build
cmake ..
cmake --build .
```

On Windows with Ninja or MSVC, adjust the generator as needed.

## Running

After building, launch the generated executable. The application opens a main Qt Quick window and loads `main.qml` from the embedded QML module.

## Notes

- The current implementation is a starting point: the UI is a blank window shell.
- Future work should add drone telemetry display, map views, mission editor, and MAVLink support.

## Contribution

Contributions are welcome. If you want to extend this project, add UI components in QML and connect them to C++ back-end services.
