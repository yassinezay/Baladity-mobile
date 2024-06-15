import '/flutter_flow/flutter_flow_util.dart';
import 'chats_list_widget.dart' show ChatsListWidget;
import 'package:flutter/material.dart';

class ChatsListModel extends FlutterFlowModel<ChatsListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
