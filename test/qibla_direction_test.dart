import 'package:test/test.dart';
import 'package:qibla_direction/qibla_direction.dart';

void main() {
  group('QiblaDirection', () {
    test('find() returns correct direction', () {
      // Coordinates of Tashkent
      const coordinate = Coordinate(41.2995, 69.2401);
      final direction = QiblaDirection.find(coordinate);
      expect(direction, closeTo(240.30, 1.0));
    });

    test('countDistance() returns correct distance', () {
      // Coordinates of Tashkent
      const coordinate = Coordinate(41.2995, 69.2401);
      final distance = QiblaDirection.countDistance(coordinate);
      expect(distance, closeTo(3531, 10));
    });
  });
}
