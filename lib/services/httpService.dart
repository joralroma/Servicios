import 'package:http/http.dart' show Client;


class HttpProvider {

  Client httpClient = Client();

  String baseUrl = 'https://ansem-test.herokuapp.com/services';


  Future httpGet(String url) {
    return httpClient.get(baseUrl + url);
  }

}