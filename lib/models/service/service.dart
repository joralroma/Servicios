import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';


// Models
import 'package:prueba/models/serializers/serializers.dart';

part 'service.g.dart';

abstract class Service implements Built<Service, ServiceBuilder> {

  @nullable
  User get user;
  
  @nullable
  Vehicle get vehicle;

  Service._();
  factory Service([void Function(ServiceBuilder) updates]) = _$Service;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Service.serializer, this);
  }

  static Service fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Service.serializer, json);
  }

  static Serializer<Service> get serializer => _$serviceSerializer;
}


abstract class User implements Built<User, UserBuilder> {

  @nullable
  String get firstName;
  
  @nullable
  String get lastName;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(User.serializer, this);
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;
}


abstract class Vehicle implements Built<Vehicle, VehicleBuilder> {
  
  @nullable
  String get brand;
  
  @nullable
  String get model;
  
  @nullable
  String get colour;
  
  @nullable
  String get licensePlate;

  Vehicle._();
  factory Vehicle([void Function(VehicleBuilder) updates]) = _$Vehicle;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Vehicle.serializer, this);
  }

  static Vehicle fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Vehicle.serializer, json);
  }

  static Serializer<Vehicle> get serializer => _$vehicleSerializer;
}