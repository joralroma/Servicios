import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';


// Models
import 'package:prueba/models/service/service.dart';


part 'serializers.g.dart';

@SerializersFor([
  Service,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
