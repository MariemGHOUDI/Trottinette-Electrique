import 'dart:async';

class SpeedService {
  Stream<double> getSpeedStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (count) => 10 + (count % 20).toDouble(), // Simule la vitesse
    );
  }
}

