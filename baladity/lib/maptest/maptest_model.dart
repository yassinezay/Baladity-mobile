import '/flutter_flow/flutter_flow_util.dart';
import 'maptest_widget.dart' show MaptestWidget;
import 'package:flutter/material.dart';

class MaptestModel extends FlutterFlowModel<MaptestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
