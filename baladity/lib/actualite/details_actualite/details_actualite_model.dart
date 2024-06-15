import '/flutter_flow/flutter_flow_util.dart';
import 'details_actualite_widget.dart' show DetailsActualiteWidget;
import 'package:flutter/material.dart';

class DetailsActualiteModel extends FlutterFlowModel<DetailsActualiteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
