import 'package:bml/src/model/nodes.dart';
import 'package:equatable/equatable.dart';

class BmlDocument extends Equatable {
  const BmlDocument(this.root);

  final BmlNode root;

  @override
  List<Object?> get props => [root];
}
