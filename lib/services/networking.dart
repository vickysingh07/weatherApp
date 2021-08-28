import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future<dynamic> getData() async{
    http.Response response = await http.get(Uri.parse(url));
//'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'
    if(response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }else{
      print(response.statusCode);
    }
  }
}