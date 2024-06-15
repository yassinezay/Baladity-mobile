import '/flutter_flow/flutter_flow_util.dart';
import 'list_publicite_widget.dart' show ListPubliciteWidget;
import 'package:flutter/material.dart';

class ListPubliciteModel extends FlutterFlowModel<ListPubliciteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
