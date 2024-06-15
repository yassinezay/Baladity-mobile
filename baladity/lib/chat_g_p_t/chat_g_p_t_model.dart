import '/backend/api_requests/api_calls.dart';
import '/components/chat_component_sender_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_g_p_t_widget.dart' show ChatGPTWidget;
import 'package:flutter/material.dart';

class ChatGPTModel extends FlutterFlowModel<ChatGPTWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chatComponentSender component.
  late ChatComponentSenderModel chatComponentSenderModel;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Icon widget.
  ApiCallResponse? apiResultg05;

  @override
  void initState(BuildContext context) {
    chatComponentSenderModel =
        createModel(context, () => ChatComponentSenderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatComponentSenderModel.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
