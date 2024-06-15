import '/flutter_flow/flutter_flow_util.dart';
import 'commentaire_t_a_widget.dart' show CommentaireTAWidget;
import 'package:flutter/material.dart';

class CommentaireTAModel extends FlutterFlowModel<CommentaireTAWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField01 widget.
  FocusNode? textField01FocusNode;
  TextEditingController? textField01TextController;
  String? Function(BuildContext, String?)? textField01TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textField01FocusNode?.dispose();
    textField01TextController?.dispose();
  }
}
