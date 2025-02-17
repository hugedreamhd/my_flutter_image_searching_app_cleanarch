// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'lib/env/.env', useConstantCase: true)
abstract class Env {
  @EnviedField()
  static const String pixabayApiKey = _Env.pixabayApiKey;
}
