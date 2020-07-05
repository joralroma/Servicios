part of 'homeBloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class MainInitial extends HomeState {
  @override
  List<Object> get props => [];
}


class GettingData extends HomeState {

  @override
  List<Object> get props => [];
}


class GotData extends HomeState {

  final List<Service> services;

  GotData(this.services);

  @override
  List<Object> get props => [];
}


class ErrorData extends HomeState {
  final String message;

  ErrorData(this.message);

  @override
  List<Object> get props => [message];
}