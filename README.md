This is a collection of loosely coupled utilities for Flutter.

## Features

- 🧩 Extensions
  - `DateTime`
    - `toDateTimeString`: returns a string in the format `dd.mm.YYYY HH:mm`
    - `toDateString`: returns a string in the format `dd.mm.YYYY`
  - `TargetPlatform`
    - `isDesktop`: returns true if the platform is desktop (Windows/macOS)
    - `isMobile`: returns true if the platform is mobile (Android/iOS)
    - `isTouchDevice`: returns true if the platform (probably) supports touch input

## Getting started

You need to have Flutter installed on your machine. For more information, see
[the Flutter documentation](https://flutter.dev/docs/get-started/install).

This library is intended to be used in Flutter projects as opposed to Dart projects.

## Usage

```dart
const now = DateTime.now();
print(now.toDateTimeString()); // 02.09.2023 12:00
```

## Contributing

Contributions are welcome! Please open an issue or a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
