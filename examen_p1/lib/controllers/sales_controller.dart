import 'package:audioplayers/audioplayers.dart';
import '../models/city.dart';

class SalesController {
  final List<City> cities;
  final AudioPlayer _audioPlayer = AudioPlayer();
  final double salesTarget = 1000;

  SalesController() : cities = City.generateMockData();

  double get chainTotalSales => cities.fold(0, (sum, city) => sum + city.totalSales);

  Future<void> checkSalesTarget() async {
    if (chainTotalSales > salesTarget) {
      await _audioPlayer.play(AssetSource('sounds/notification.mp3'));
    }
  }
}