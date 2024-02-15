import 'package:annotations/annotations.dart';

// Step 1
part 'product.json_generator.g.dart'; //Should be same file name


// Step 2
@CustomAnnotation()
class Product {
  final String name;
  final double price;

  const Product({required this.name, required this.price});

  /// Connect the generated [_$ProductFromJson] function to the `fromJson`
  /// factory.
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  /// Connect the generated [_$ProductToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}