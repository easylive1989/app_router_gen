library generators;

import 'package:build/build.dart';
import 'package:generators/src/json_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateJsonMethods(BuilderOptions options) {
  // Step 1
  return LibraryBuilder(
    JsonGenerator(), // Step 2
    generatedExtension: '.json_generator.g.dart',
    // 'json_generator',
  );
}
