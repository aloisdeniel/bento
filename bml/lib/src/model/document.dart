import 'package:bml/src/model/values.dart';
import 'package:equatable/equatable.dart';

class BmlDocument extends Equatable {
  const BmlDocument(this.root);

  final BmlValue root;

  @override
  List<Object?> get props => [root];
}
