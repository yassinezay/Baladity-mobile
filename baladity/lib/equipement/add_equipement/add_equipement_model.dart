import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_equipement_widget.dart' show AddEquipementWidget;
import 'package:flutter/material.dart';

class AddEquipementModel extends FlutterFlowModel<AddEquipementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ref widget.
  FocusNode? refFocusNode;
  TextEditingController? refTextController;
  String? Function(BuildContext, String?)? refTextControllerValidator;
  String? _refTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'syh77zfs' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '0ki673h8' /* Min 10 characters */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'm217zbel' /* Max 15 chracters */,
      );
    }

    return null;
  }

  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  String? _nomTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'iv9sx6z8' /* Field is required */,
      );
    }

    if (val.length < 7) {
      return FFLocalizations.of(context).getText(
        'k60utcox' /* Min 7 chracters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'yqd7rwpe' /* Max 10 chracters */,
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
        '3gjgdddy' /* Field is required */,
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
        '79w0xpmh' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '5u6mamwj' /* Min 10 chracters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        '3t8j62td' /* Max 20 chracters */,
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
    refTextControllerValidator = _refTextControllerValidator;
    nomTextControllerValidator = _nomTextControllerValidator;
    quantitTextControllerValidator = _quantitTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    refFocusNode?.dispose();
    refTextController?.dispose();

    nomFocusNode?.dispose();
    nomTextController?.dispose();

    quantitFocusNode?.dispose();
    quantitTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
