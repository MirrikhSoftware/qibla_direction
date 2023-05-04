import 'package:qibla_direction/qibla_direction.dart';

void main() {
  // Coordinates of Tashkent
  const coordinate = Coordinate(41.2995, 69.2401);

  // Coordinates of London
  // const coordinate = Coordinate(51.5074, -0.1278);

  final direction = QiblaDirection.find(coordinate);
  final distance = QiblaDirection.countDistance(coordinate);
  print(direction);
  print(distance);
}
