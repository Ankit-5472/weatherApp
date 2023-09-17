import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
   final String url;

  Future<dynamic> getData() async {
    final String apiUrl = url;
    try{
      final http.Response response = await http.get(Uri.parse(apiUrl));
      if(response.statusCode==200){
        String data = response.body;
        return jsonDecode(data);

      }else{
        print(response.statusCode);
      }
    }
    catch(e){
      print(e);
      return null;
    }
  }

}