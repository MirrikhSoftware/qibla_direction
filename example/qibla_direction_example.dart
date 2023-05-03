import 'package:qibla_direction/qibla_direction.dart';
import 'package:qibla_direction/src/coordinate.dart';

void main() {
  // Coordinates of Tashkent
  const coordinate = Coordinate(41.2995, 69.2401);
  final direction = QiblaDirection.find(coordinate);
  final distance = QiblaDirection.countDistance(coordinate);
  print(direction);
  print(distance);
}
