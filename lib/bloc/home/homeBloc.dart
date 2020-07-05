import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:equatable/equatable.dart';


// Models
import 'package:prueba/models/service/service.dart';

// Resources
import 'package:prueba/resource/homeResource.dart';

// Parts
part 'homeEvent.dart';
part 'homeState.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final Logger logger = Logger();


  final HomeResource _homeResource = HomeResource();

  @override
  HomeState get initialState => MainInitial();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if( (event is GetDataEvent) ) {
      yield* _getDataUser(event);
    }
  }

// *************************** Funciones Propias ****************************/
  Stream<HomeState> _getDataUser(GetDataEvent event) async* {
    yield GettingData();
    try {
      List<Service> _services = await _homeResource.getDataHome();
      if(_services == null) {
        yield ErrorData('Error en la data del home.');
      } else {
        yield GotData(_services);
      }
    } catch (e) {
      yield ErrorData('Error en la data del home.');
    }
  }

}
