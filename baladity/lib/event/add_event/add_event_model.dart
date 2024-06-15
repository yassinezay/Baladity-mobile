import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_event_widget.dart' show AddEventWidget;
import 'package:flutter/material.dart';

class AddEventModel extends FlutterFlowModel<AddEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NomEvenement widget.
  FocusNode? nomEvenementFocusNode;
  TextEditingController? nomEvenementTextController;
  String? Function(BuildContext, String?)? nomEvenementTextControllerValidator;
  String? _nomEvenementTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '707n880m' /* Field required */,
      );
    }

    if (val.length < 5) {
      return FFLocalizations.of(context).getText(
        'mk2da2su' /* Min 5 characters */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        '2d0vxzm4' /* Max 10 chracters */,
      );
    }

    return null;
  }

  // State field(s) for CapaciteEvenement widget.
  FocusNode? capaciteEvenementFocusNode;
  TextEditingController? capaciteEvenementTextController;
  String? Function(BuildContext, String?)?
      capaciteEvenementTextControllerValidator;
  String? _capaciteEvenementTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hqgr44b2' /* Field is required */,
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
  DateTime? datePicked1;
  DateTime? datePicked2;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nomEvenementTextControllerValidator = _nomEvenementTextControllerValidator;
    capaciteEvenementTextControllerValidator =
        _capaciteEvenementTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomEvenementFocusNode?.dispose();
    nomEvenementTextController?.dispose();

    capaciteEvenementFocusNode?.dispose();
    capaciteEvenementTextController?.dispose();
  }
}
