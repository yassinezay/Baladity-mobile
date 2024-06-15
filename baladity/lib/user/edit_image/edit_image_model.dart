import '/flutter_flow/flutter_flow_util.dart';
import 'edit_image_widget.dart' show EditImageWidget;
import 'package:flutter/material.dart';

class EditImageModel extends FlutterFlowModel<EditImageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
