import '/flutter_flow/flutter_flow_util.dart';
import 'modifer_actualite_widget.dart' show ModiferActualiteWidget;
import 'package:flutter/material.dart';

class ModiferActualiteModel extends FlutterFlowModel<ModiferActualiteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titreModif widget.
  FocusNode? titreModifFocusNode;
  TextEditingController? titreModifTextController;
  String? Function(BuildContext, String?)? titreModifTextControllerValidator;
  String? _titreModifTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'u5h2zmcj' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'og3tejjf' /* la longueur du titre doit etre... */,
      );
    }
    if (val.length > 12) {
      return FFLocalizations.of(context).getText(
        'g07bzoak' /* la longueur du titre doit etre... */,
      );
    }

    return null;
  }

  // State field(s) for descriptionmodif widget.
  FocusNode? descriptionmodifFocusNode;
  TextEditingController? descriptionmodifTextController;
  String? Function(BuildContext, String?)?
      descriptionmodifTextControllerValidator;
  String? _descriptionmodifTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j2wwth16' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'citayng1' /* la longueur de la description ... */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        '1grhmjdo' /* la longueur de la description ... */,
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
    titreModifTextControllerValidator = _titreModifTextControllerValidator;
    descriptionmodifTextControllerValidator =
        _descriptionmodifTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreModifFocusNode?.dispose();
    titreModifTextController?.dispose();

    descriptionmodifFocusNode?.dispose();
    descriptionmodifTextController?.dispose();
  }
}
