part of 'homeBloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetDataEvent extends HomeEvent {

  GetDataEvent();

  @override
  List<Object> get props => null;
}
