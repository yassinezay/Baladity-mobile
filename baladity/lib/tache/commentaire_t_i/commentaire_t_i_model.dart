import '/flutter_flow/flutter_flow_util.dart';
import 'commentaire_t_i_widget.dart' show CommentaireTIWidget;
import 'package:flutter/material.dart';

class CommentaireTIModel extends FlutterFlowModel<CommentaireTIWidget> {
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
