import 'package:http/http.dart' show Client;
import 'package:weather_app/model/WeatherData.dart';

class MapApi {

  static const _apiKey = 'a03fddebe108cf5a74cb80572ebc6e53';
  static const _endPoint = 'https://api.openweathermap.org/data/2.5';
  double lat, lon;

  Client client = Client();

  static MapApi _instance;
  static MapApi getInstance() => _instance ??= MapApi();

  String _apiCall({double lat, double lon}){
    return _endPoint + "/weather?lat=" + lat.toString() + "&lon" + lon.toString() +
      "&APPID=" + _apiKey + "&units=metric"; 
  }

  getWeather({double lat, double lon}) async {
    var response = await client.get(
      Uri.encodeFull(_apiCall(lat: lat, lon: lon)),
      headers: {
        'Accept': 'application/json'
      }
    );
    return WeatherData.deseralize(response.body);
  }
}