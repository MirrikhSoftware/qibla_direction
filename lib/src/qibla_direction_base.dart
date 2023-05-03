import 'package:qibla_direction/src/coordinate.dart';

import 'math_utils.dart';
import 'dart:math' as math;

class QiblaDirection {
  const QiblaDirection._();

  /// The coordinates of Makkah
  static const makkahCoordinates = Coordinate(21.422487, 39.826206);

  /// Calculates the direction of the Qibla from a given coordinate
  /// The find method uses the math library to perform mathematical operations.
  /// It calculates the direction of the Qibla using the following formula:
  /// angle = atan2(term1, term2 - term3)
  /// where term1, term2, and term3 are intermediate calculations based on
  /// the coordinates of Makkah and the given coordinate.
  static double find(Coordinate coordinate) {
    double term1 = (math.sin(degreesToRadians(makkahCoordinates.longitude) -
        degreesToRadians(coordinate.longitude)));
    double term2 = (math.cos(degreesToRadians(coordinate.latitude)) *
        math.tan(degreesToRadians(makkahCoordinates.latitude)));
    double term3 = (math.sin(degreesToRadians(coordinate.latitude)) *
        math.cos(degreesToRadians(makkahCoordinates.longitude) -
            degreesToRadians(coordinate.longitude)));
    double angle = math.atan2(term1, term2 - term3);

    return unwindAngle(radiansToDegrees(angle));
  }

  static double countDistance(Coordinate coordinate) {
    const radius = 6371.0; // radius of the earth in km
    final lat = makkahCoordinates.latitude;
    final lon = makkahCoordinates.longitude;
    final dLat = degreesToRadians(lat - coordinate.latitude);
    final dLon = degreesToRadians(lon - coordinate.longitude);
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(degreesToRadians(coordinate.latitude)) *
            math.cos(degreesToRadians(makkahCoordinates.latitude)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    final distance = radius * c;
    return distance;
  }
}
