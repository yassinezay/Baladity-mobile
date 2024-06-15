import '/flutter_flow/flutter_flow_util.dart';
import 'list_proposition_widget.dart' show ListPropositionWidget;
import 'package:flutter/material.dart';

class ListPropositionModel extends FlutterFlowModel<ListPropositionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
