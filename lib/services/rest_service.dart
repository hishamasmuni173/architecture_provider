import 'dart:convert';
import 'package:http/http.dart' as http;

class RestService {
  // Change the baseUrl based on your laptop's IP address.
  static const String baseUrl = 'http://192.168.1.19:3000';
//  static const String baseUrl = 'http://10.0.2.2:3000';
  //static const String baseUrl = 'https://my-json-server.typicode.com/hishamasmuni173/jsondb';

  Future get(String endpoint) async {
    final response = await http.get('$baseUrl/$endpoint' as Uri);

    // ignore: avoid_print
    print("get data rest service");
    print(response.statusCode);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future post(String endpoint, {dynamic data}) async {
    final response = await http.post('$baseUrl/$endpoint' as Uri,
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future patch(String endpoint, {dynamic data}) async {
    final response = await http.patch('$baseUrl/$endpoint' as Uri,
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw response;
  }

  Future delete(String endpoint) async {
    final response = await http.delete('$baseUrl/$endpoint' as Uri);

    if (response.statusCode == 200) {
      return;
    }
    throw response;
  }
}
