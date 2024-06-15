import '/flutter_flow/flutter_flow_util.dart';
import 'add_prop_widget.dart' show AddPropWidget;
import 'package:flutter/material.dart';

class AddPropModel extends FlutterFlowModel<AddPropWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ohkrxxdt' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '30d2q6to' /* Min 10 chracters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'htzfl0na' /* Max 20 chracters */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
