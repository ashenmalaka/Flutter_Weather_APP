import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/model/LocationData.dart';

main() {
  test('Test Location Data', (){
    final double lat = 51.15;
    final double lon = -0.13;

    Map<String, double> testData = {
      'latitiude': lat,
      'longitude': lon,
    };

    var locationData = LocationData.locationItems(testData);
    expect (locationData.lat, equals(lat));
    expect(locationData.lon, equals(lon));
  });
}