import '/flutter_flow/flutter_flow_util.dart';
import 'details_equipement_widget.dart' show DetailsEquipementWidget;
import 'package:flutter/material.dart';

class DetailsEquipementModel extends FlutterFlowModel<DetailsEquipementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
