import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajouter_tache_widget.dart' show AjouterTacheWidget;
import 'package:flutter/material.dart';

class AjouterTacheModel extends FlutterFlowModel<AjouterTacheWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;
  String? _taskTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'dy7eo45e' /* Titre Obligatoire */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'gn9d9slq' /* >= 4 characteres */,
      );
    }
    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        '20evypqc' /* <= 25  characteres */,
      );
    }
    if (!RegExp('^[a-zA-Z\\s]+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    taskTextControllerValidator = _taskTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode?.dispose();
    taskTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
