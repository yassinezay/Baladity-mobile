import '/flutter_flow/flutter_flow_util.dart';
import '/user/image_update/image_update_widget.dart';
import 'image_update_widget.dart' show ImageUpdateWidget;
import 'package:flutter/material.dart';

class ImageUpdateModel extends FlutterFlowModel<ImageUpdateWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
