/*

  Created by: Bakhromjon Polat
  Created on: May 03 2023 23:44:53
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

    All of these functions use the dart:math
    library to perform mathematical operations.

*/

import 'dart:math' as math;

/// Converts degrees to radians
/// This function takes an angle in degrees and returns the equivalent angle in radians.
double degreesToRadians(double degrees) => (degrees * math.pi) / 180.0;

/// Converts radians to degrees
/// : This function takes an angle in radians and returns the equivalent angle in degrees.
double radiansToDegrees(double radians) => (radians * 180.0) / math.pi;

/// Normalizes a number to a given scale
/// This function takes a number and a maximum value, and returns the number
/// normalized to the range between 0 and the maximum value.
double normalizeToScale(double number, double max) =>
    number - (max * ((number / max).floor()));

/// Unwinds an angle to a value between 0 and 360 degrees
/// This function takes an angle and returns the equivalent angle between 0 and 360 degrees.
double unwindAngle(double angle) => normalizeToScale(angle, 360.0);

/// Shifts an angle to a value between -180 and 180 degrees
/// This function takes an angle and returns the equivalent angle between -180 and 180 degrees.
double quadrantShiftAngle(double angle) {
  if (angle >= -180 && angle <= 180) {
    return angle;
  }

  return angle - (360 * (angle / 360).round());
}
