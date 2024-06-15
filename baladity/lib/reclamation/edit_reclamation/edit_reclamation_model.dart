import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_reclamation_widget.dart' show EditReclamationWidget;
import 'package:flutter/material.dart';

class EditReclamationModel extends FlutterFlowModel<EditReclamationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for sujet_reclamation widget.
  FocusNode? sujetReclamationFocusNode;
  TextEditingController? sujetReclamationTextController;
  String? Function(BuildContext, String?)?
      sujetReclamationTextControllerValidator;
  String? _sujetReclamationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '03c2osku' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        '4kqgw5cf' /* Min 5 characters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'u3uaxcen' /* Max 10 characters */,
      );
    }

    return null;
  }

  // State field(s) for description_reclamation widget.
  FocusNode? descriptionReclamationFocusNode;
  TextEditingController? descriptionReclamationTextController;
  String? Function(BuildContext, String?)?
      descriptionReclamationTextControllerValidator;
  String? _descriptionReclamationTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zn85pocp' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'myyb4ol7' /* Min 10 characters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'xdl5kwzs' /* Max 20 characters */,
      );
    }

    return null;
  }

  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseTextController;
  String? Function(BuildContext, String?)? adresseTextControllerValidator;
  String? _adresseTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '739qbza0' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'vidcdv76' /* Min 5 characters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'fns1s560' /* Max 10 characters */,
      );
    }

    return null;
  }

  // State field(s) for type_reclamationn widget.
  String? typeReclamationnValue;
  FormFieldController<String>? typeReclamationnValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    sujetReclamationTextControllerValidator =
        _sujetReclamationTextControllerValidator;
    descriptionReclamationTextControllerValidator =
        _descriptionReclamationTextControllerValidator;
    adresseTextControllerValidator = _adresseTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sujetReclamationFocusNode?.dispose();
    sujetReclamationTextController?.dispose();

    descriptionReclamationFocusNode?.dispose();
    descriptionReclamationTextController?.dispose();

    adresseFocusNode?.dispose();
    adresseTextController?.dispose();
  }
}
