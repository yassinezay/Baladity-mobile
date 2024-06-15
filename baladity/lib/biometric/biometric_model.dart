import '/flutter_flow/flutter_flow_util.dart';
import 'biometric_widget.dart' show BiometricWidget;
import 'package:flutter/material.dart';

class BiometricModel extends FlutterFlowModel<BiometricWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
