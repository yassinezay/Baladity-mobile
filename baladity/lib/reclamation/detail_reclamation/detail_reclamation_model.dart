import '/flutter_flow/flutter_flow_util.dart';
import 'detail_reclamation_widget.dart' show DetailReclamationWidget;
import 'package:flutter/material.dart';

class DetailReclamationModel extends FlutterFlowModel<DetailReclamationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
