import 'dart:async';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';  // Ajoute cette ligne

// import 'package:your_trottinette_api/your_trottinette_api.dart'; // Import de l'API réelle

class TrottinetteDataService {
  // Simuler des données de vitesse
  Stream<List<FlSpot>> getSpeedDataStream() {
    // Si tu n'as pas encore de matériel :
    return Stream.periodic(Duration(seconds: 1), (_) {
      List<FlSpot> dataPoints = [];
      for (int i = 0; i < 10; i++) { // 10 points de données
        dataPoints.add(FlSpot(i.toDouble(), Random().nextDouble() * 30)); // Vitesse simulée entre 0 et 30 km/h
      }
      return dataPoints;
    });

    // Si j'ai le matériel, décommente cette section et connecte l'API de la trottinette
    /*
    return Stream.periodic(Duration(seconds: 1), (_) async {
      // Exemple de récupération des données depuis la trottinette (utilise une API réelle)
      final trottinetteData = await TrottinetteAPI.getData();
      final speed = trottinetteData.speed;
      final batteryLevel = trottinetteData.batteryLevel;

      List<FlSpot> dataPoints = [];
      for (int i = 0; i < 10; i++) {
        dataPoints.add(FlSpot(i.toDouble(), speed)); // Récupère la vitesse réelle ici
      }
      return dataPoints;
    });
    */
  }
}

