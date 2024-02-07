import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ModelVisitor extends SimpleElementVisitor<void>{
  String className = '';
  Map<String, dynamic> fields = {};

// Step 3
  @override
  void visitConstructorElement(ConstructorElement element) {
    final String returnType = element.returnType.toString();
// Step 4
    className = returnType.replaceAll("*", ""); // ClassName* -> ClassName
  }

// Step 5
  @override
  void visitFieldElement(FieldElement element) {
    /*
    {
      name: String,
      price: double
    }
     */

// Step 6
    String elementType = element.type.toString().replaceAll("*", "");
    fields[element.name] = elementType;

  }

}