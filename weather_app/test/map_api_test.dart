import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:weather_app/api/MapApi.dart';

main(){
  test('MapApi getWeather method', () async{
    final double lat = 35.67;
    final double lon = 136.77;

    final mapJson = {


      final mapApi = MapApi.getInstance();

      mapApi.client = MockClient((request) async {
        return Response(json.encode(mapJson), 200);
       }
      );
    };
  });
}