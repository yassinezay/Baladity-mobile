import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_equipement_widget.dart' show UpdateEquipementWidget;
import 'package:flutter/material.dart';

class UpdateEquipementModel extends FlutterFlowModel<UpdateEquipementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  String? _nomTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'od87yx69' /* Field is required */,
      );
    }

    if (val.length < 7) {
      return FFLocalizations.of(context).getText(
        '5143d98x' /* Min 7 chracters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'asfzwu37' /* Max 10 chracters */,
      );
    }

    return null;
  }

  // State field(s) for ref widget.
  FocusNode? refFocusNode;
  TextEditingController? refTextController;
  String? Function(BuildContext, String?)? refTextControllerValidator;
  String? _refTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oxgfyqt9' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for quantit widget.
  FocusNode? quantitFocusNode;
  TextEditingController? quantitTextController;
  String? Function(BuildContext, String?)? quantitTextControllerValidator;
  String? _quantitTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yarsnxga' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qtfi0xyo' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'wifi9uiq' /* Min 10 characters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'j0s0a4zz' /* Max 20 chracters */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nomTextControllerValidator = _nomTextControllerValidator;
    refTextControllerValidator = _refTextControllerValidator;
    quantitTextControllerValidator = _quantitTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    refFocusNode?.dispose();
    refTextController?.dispose();

    quantitFocusNode?.dispose();
    quantitTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
