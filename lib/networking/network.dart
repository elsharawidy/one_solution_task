import 'package:http/http.dart' as http;
import 'dart:convert';

var url = Uri.parse(
    'https://api.nytimes.com/svc/topstories/v2/home.json?api-key=3mh2JkNo6RqrYZxAnNmdyvLdFnKBMfh9');

class Network {
  Future getInfo() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
      // json of api information.
    }
  }
}
