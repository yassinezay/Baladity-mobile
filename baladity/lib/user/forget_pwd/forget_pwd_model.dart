import '/flutter_flow/flutter_flow_util.dart';
import 'forget_pwd_widget.dart' show ForgetPwdWidget;
import 'package:flutter/material.dart';

class ForgetPwdModel extends FlutterFlowModel<ForgetPwdWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
