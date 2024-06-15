import '/flutter_flow/flutter_flow_util.dart';
import 'holidays_widget.dart' show HolidaysWidget;
import 'package:flutter/material.dart';

class HolidaysModel extends FlutterFlowModel<HolidaysWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
