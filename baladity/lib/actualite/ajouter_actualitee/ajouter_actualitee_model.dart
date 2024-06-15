import '/flutter_flow/flutter_flow_util.dart';
import 'ajouter_actualitee_widget.dart' show AjouterActualiteeWidget;
import 'package:flutter/material.dart';

class AjouterActualiteeModel extends FlutterFlowModel<AjouterActualiteeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titrea widget.
  FocusNode? titreaFocusNode;
  TextEditingController? titreaTextController;
  String? Function(BuildContext, String?)? titreaTextControllerValidator;
  String? _titreaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ehrmu3f7' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        '71opw142' /* la longueur doit etre superieu... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'aer7uv21' /* la longueur doit etre inférieu... */,
      );
    }

    return null;
  }

  // State field(s) for descriptiona widget.
  FocusNode? descriptionaFocusNode;
  TextEditingController? descriptionaTextController;
  String? Function(BuildContext, String?)? descriptionaTextControllerValidator;
  String? _descriptionaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ehrmu3f7' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'q5waxjdm' /* la longeur de la description d... */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'qsf2n2gp' /* la longeur de la description d... */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  var qr = '';

  @override
  void initState(BuildContext context) {
    titreaTextControllerValidator = _titreaTextControllerValidator;
    descriptionaTextControllerValidator = _descriptionaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreaFocusNode?.dispose();
    titreaTextController?.dispose();

    descriptionaFocusNode?.dispose();
    descriptionaTextController?.dispose();
  }
}
