# Qibla direction
[![pub package](https://img.shields.io/pub/v/qibla_direction.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/qibla_direction)
[![CI](https://img.shields.io/github/actions/workflow/status/MirrikhSoftware/qibla_direction/dart-ci.yaml?branch=master&logo=github-actions&logoColor=white)](https://github.com/MirrikhSoftware/qibla_direction/actions)
[![mit license](https://img.shields.io/github/license/MirrikhSoftware/qibla_direction?color=green)](https://opensource.org/licenses/MIT)
[![contributors](https://img.shields.io/github/contributors/MirrikhSoftware/qibla_direction)](https://github.com/MirrikhSoftware/qibla_direction/contributors)
[![commits](https://img.shields.io/github/commit-activity/m/MirrikhSoftware/qibla_direction)](https://github.com/MirrikhSoftware/qibla_direction/pulse)

## Getting started

To start using this package, add qibla_direction dependency to your pubspec.yaml

```yaml
dependencies:
  qibla_direction: '<latest_release>'
```

## Features
- Finds the direction, in degrees from North, of the Qibla from a given set of coordinates.
- Counts distance between Kaaba and entered coordinates

## Usage

Import

```dart
import 'package:qibla_direction/qibla_direction.dart';
```

Get the direction, in degrees from North, of the Qibla from a given set of coordinates.

```dart
// Coordinates of Tashkent
const coordinate = Coordinate(41.2995, 69.2401);
final direction = QiblaDirection.find(coordinate);

// Output: 240.29722032951278
```

Get distance, in kilometers of the the Qibla from a given set of coordinates.

```dart
// Coordinates of Tashkent
const coordinate = Coordinate(41.2995, 69.2401);
final direction = QiblaDirection.countDistance(coordinate);

// Output: 3531.4030278182277
```
