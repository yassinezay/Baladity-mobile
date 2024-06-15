import '/flutter_flow/flutter_flow_util.dart';
import 'list_reclamation_d_widget.dart' show ListReclamationDWidget;
import 'package:flutter/material.dart';

class ListReclamationDModel extends FlutterFlowModel<ListReclamationDWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
