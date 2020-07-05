import 'dart:convert';
import 'package:logger/logger.dart';

// Models
import 'package:prueba/models/service/service.dart';

// Http
import 'package:prueba/services/httpService.dart';

class HomeService {

  final Logger logger = Logger( printer: PrettyPrinter() );

  HttpProvider _http = HttpProvider();


  Future<List<Service>> getDataHome() async {
    try {
      final response = await _http.httpGet('');
      if (response.statusCode == 200) {
        final Iterable data = json.decode(response.body)['services'];
        if(data != null) {
          List<Service> services = data.map((model) => Service.fromJson(model)).toList();
          return services;
        }
        return null;
      }
      return null;
    } catch (e) {
      return null;
    }
  }


}