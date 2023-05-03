// ignore_for_file: public_member_api_docs, sort_constructors_first
/*

  Created by: Bakhromjon Polat
  Created on: May 03 2023 23:28:13
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

class Coordinate {
  final double latitude;
  final double longitude;
  const Coordinate({
    required this.latitude,
    required this.longitude,
  });

  @override
  String toString() => 'Coordinate(latitude: $latitude, longitude: $longitude)';

  Coordinate copyWith({
    double? latitude,
    double? longitude,
  }) {
    return Coordinate(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
