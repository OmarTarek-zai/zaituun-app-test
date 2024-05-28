# Build Pipeline for Flutter App

This document outlines the creation of a pipeline using GitHub Actions to automate the build process for the Flutter app on iOS and Android on PR merge, as well as the storage of the corresponding artifacts.
## Workflow File Overview

The workflow file `.github/workflows/build_flutter.yaml` is triggered on every push to the `main` branch.

### Jobs

- **build-android**: This job runs on `ubuntu-latest` and handles the build process for the Android app.
- **build-ios**: This job runs on `macos-latest` and handles the build process for the iOS app.

### Steps

Each job includes the following steps:
- **Checkout repository**: Uses `actions/checkout@v4` to pull the code.
- **Set up Flutter**: Uses `subosito/flutter-action@v2` to install Flutter.
- **Install dependencies**: Runs `flutter pub get` to install Dart dependencies.
- **Build**: 
    - Android: `flutter build apk --release`.
    - iOS: No codesiging is used during the build for iOS.  `flutter build ios --release --no-codesign`

- **Upload artifact**: Uses `actions/upload-artifact@v2` to store the build output for apk and ios-app.

