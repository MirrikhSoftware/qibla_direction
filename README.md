
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
const coordinate = Coordinate(41.2995, 69.2401);
final direction = QiblaDirection.find(coordinate);

// Output: 240.29722032951278
```

Get distance, in kilometers of the the Qibla from a given set of coordinates.

```dart
const coordinate = Coordinate(41.2995, 69.2401);
final direction = QiblaDirection.countDistance(coordinate);

// Output: 3531.4030278182277
```

