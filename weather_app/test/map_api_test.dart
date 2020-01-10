import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:weather_app/api/MapApi.dart';

main(){
  test('MapApi getWeather method', () async{
    final double lat = 35.67;
    final double lon = 136.77;

    final mapJson = {
      //"coord":{"lon":136.77, "lat":35.57},

      // final mapApi = MapApi.getInstance();

      // mapApi.client = MockClient((request) async {
      //   return Response(json.encode(mapJson), 200);
      //  }
      // );

      // final weatherItem = await mapApi.getWeather(lat: lat, lon: lon);

      // expect(weatherItem.name, 'Mino');
      // expect(weatherItem.temp, 18);
    };
  });
}