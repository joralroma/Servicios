// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Service> _$serviceSerializer = new _$ServiceSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<Vehicle> _$vehicleSerializer = new _$VehicleSerializer();

class _$ServiceSerializer implements StructuredSerializer<Service> {
  @override
  final Iterable<Type> types = const [Service, _$Service];
  @override
  final String wireName = 'Service';

  @override
  Iterable<Object> serialize(Serializers serializers, Service object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    if (object.vehicle != null) {
      result
        ..add('vehicle')
        ..add(serializers.serialize(object.vehicle,
            specifiedType: const FullType(Vehicle)));
    }
    return result;
  }

  @override
  Service deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'vehicle':
          result.vehicle.replace(serializers.deserialize(value,
              specifiedType: const FullType(Vehicle)) as Vehicle);
          break;
      }
    }

    return result.build();
  }
}

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VehicleSerializer implements StructuredSerializer<Vehicle> {
  @override
  final Iterable<Type> types = const [Vehicle, _$Vehicle];
  @override
  final String wireName = 'Vehicle';

  @override
  Iterable<Object> serialize(Serializers serializers, Vehicle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brand != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(object.brand,
            specifiedType: const FullType(String)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.colour != null) {
      result
        ..add('colour')
        ..add(serializers.serialize(object.colour,
            specifiedType: const FullType(String)));
    }
    if (object.licensePlate != null) {
      result
        ..add('licensePlate')
        ..add(serializers.serialize(object.licensePlate,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Vehicle deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehicleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'colour':
          result.colour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'licensePlate':
          result.licensePlate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Service extends Service {
  @override
  final User user;
  @override
  final Vehicle vehicle;

  factory _$Service([void Function(ServiceBuilder) updates]) =>
      (new ServiceBuilder()..update(updates)).build();

  _$Service._({this.user, this.vehicle}) : super._();

  @override
  Service rebuild(void Function(ServiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceBuilder toBuilder() => new ServiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Service && user == other.user && vehicle == other.vehicle;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), vehicle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Service')
          ..add('user', user)
          ..add('vehicle', vehicle))
        .toString();
  }
}

class ServiceBuilder implements Builder<Service, ServiceBuilder> {
  _$Service _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  VehicleBuilder _vehicle;
  VehicleBuilder get vehicle => _$this._vehicle ??= new VehicleBuilder();
  set vehicle(VehicleBuilder vehicle) => _$this._vehicle = vehicle;

  ServiceBuilder();

  ServiceBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _vehicle = _$v.vehicle?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Service other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Service;
  }

  @override
  void update(void Function(ServiceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Service build() {
    _$Service _$result;
    try {
      _$result = _$v ??
          new _$Service._(user: _user?.build(), vehicle: _vehicle?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'vehicle';
        _vehicle?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Service', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.firstName, this.lastName}) : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firstName.hashCode), lastName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result =
        _$v ?? new _$User._(firstName: firstName, lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$Vehicle extends Vehicle {
  @override
  final String brand;
  @override
  final String model;
  @override
  final String colour;
  @override
  final String licensePlate;

  factory _$Vehicle([void Function(VehicleBuilder) updates]) =>
      (new VehicleBuilder()..update(updates)).build();

  _$Vehicle._({this.brand, this.model, this.colour, this.licensePlate})
      : super._();

  @override
  Vehicle rebuild(void Function(VehicleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehicleBuilder toBuilder() => new VehicleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vehicle &&
        brand == other.brand &&
        model == other.model &&
        colour == other.colour &&
        licensePlate == other.licensePlate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, brand.hashCode), model.hashCode), colour.hashCode),
        licensePlate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Vehicle')
          ..add('brand', brand)
          ..add('model', model)
          ..add('colour', colour)
          ..add('licensePlate', licensePlate))
        .toString();
  }
}

class VehicleBuilder implements Builder<Vehicle, VehicleBuilder> {
  _$Vehicle _$v;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _colour;
  String get colour => _$this._colour;
  set colour(String colour) => _$this._colour = colour;

  String _licensePlate;
  String get licensePlate => _$this._licensePlate;
  set licensePlate(String licensePlate) => _$this._licensePlate = licensePlate;

  VehicleBuilder();

  VehicleBuilder get _$this {
    if (_$v != null) {
      _brand = _$v.brand;
      _model = _$v.model;
      _colour = _$v.colour;
      _licensePlate = _$v.licensePlate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vehicle other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Vehicle;
  }

  @override
  void update(void Function(VehicleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Vehicle build() {
    final _$result = _$v ??
        new _$Vehicle._(
            brand: brand,
            model: model,
            colour: colour,
            licensePlate: licensePlate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
