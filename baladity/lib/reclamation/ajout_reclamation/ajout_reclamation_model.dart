import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajout_reclamation_widget.dart' show AjoutReclamationWidget;
import 'package:flutter/material.dart';

class AjoutReclamationModel extends FlutterFlowModel<AjoutReclamationWidget> {
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
        'cr36ortv' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'gbbe733f' /* Min 10 chracters */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'oz6rg0tq' /* Max 20 chracters */,
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
        'tnmdcwef' /* Field is required */,
      );
    }

    if (val.length < 20) {
      return FFLocalizations.of(context).getText(
        'mnio3lod' /* Min 20 chracters */,
      );
    }
    if (val.length > 30) {
      return FFLocalizations.of(context).getText(
        '1gpnapqr' /* Max 30 characters */,
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
        'duxokq0y' /* Field is required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        '924hhvtv' /* Min 5 characters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'qecgoipw' /* Max 10 characters */,
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
