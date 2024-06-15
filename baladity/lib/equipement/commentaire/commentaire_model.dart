import '/flutter_flow/flutter_flow_util.dart';
import 'commentaire_widget.dart' show CommentaireWidget;
import 'package:flutter/material.dart';

class CommentaireModel extends FlutterFlowModel<CommentaireWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
