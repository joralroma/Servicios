import 'dart:async';

// Models
import 'package:prueba/models/service/service.dart';

// Services
import 'package:prueba/services/homeService.dart';

// Models


class HomeResource {

  final HomeService mainProvider = HomeService();

  Future<List<Service>> getDataHome() => mainProvider.getDataHome();

}

final homeResource = HomeResource();