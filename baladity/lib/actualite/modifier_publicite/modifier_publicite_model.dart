import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modifier_publicite_widget.dart' show ModifierPubliciteWidget;
import 'package:flutter/material.dart';

class ModifierPubliciteModel extends FlutterFlowModel<ModifierPubliciteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titre_modifpub widget.
  FocusNode? titreModifpubFocusNode;
  TextEditingController? titreModifpubTextController;
  String? Function(BuildContext, String?)? titreModifpubTextControllerValidator;
  String? _titreModifpubTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'v1zjq9xo' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'aromu5qe' /* le titre doit etre supérieur à... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        '0883io7g' /* le titre doit etre inférieur à... */,
      );
    }

    return null;
  }

  // State field(s) for description_modifpub widget.
  FocusNode? descriptionModifpubFocusNode;
  TextEditingController? descriptionModifpubTextController;
  String? Function(BuildContext, String?)?
      descriptionModifpubTextControllerValidator;
  String? _descriptionModifpubTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0s5pmsp3' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '3zwgtf8m' /* la description doit etre supér... */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'wezz36k0' /* la description doit etre infér... */,
      );
    }

    return null;
  }

  // State field(s) for localisation_modifpub widget.
  FocusNode? localisationModifpubFocusNode;
  TextEditingController? localisationModifpubTextController;
  String? Function(BuildContext, String?)?
      localisationModifpubTextControllerValidator;
  String? _localisationModifpubTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's5r8bsao' /* veuillez remplir ce champ */,
      );
    }

    return null;
  }

  // State field(s) for num_pubmodif widget.
  FocusNode? numPubmodifFocusNode;
  TextEditingController? numPubmodifTextController;
  String? Function(BuildContext, String?)? numPubmodifTextControllerValidator;
  String? _numPubmodifTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bkyjdf2l' /* veuillerz remplir ce champ */,
      );
    }

    return null;
  }

  // State field(s) for offre_pubmodif widget.
  String? offrePubmodifValue;
  FormFieldController<String>? offrePubmodifValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    titreModifpubTextControllerValidator =
        _titreModifpubTextControllerValidator;
    descriptionModifpubTextControllerValidator =
        _descriptionModifpubTextControllerValidator;
    localisationModifpubTextControllerValidator =
        _localisationModifpubTextControllerValidator;
    numPubmodifTextControllerValidator = _numPubmodifTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreModifpubFocusNode?.dispose();
    titreModifpubTextController?.dispose();

    descriptionModifpubFocusNode?.dispose();
    descriptionModifpubTextController?.dispose();

    localisationModifpubFocusNode?.dispose();
    localisationModifpubTextController?.dispose();

    numPubmodifFocusNode?.dispose();
    numPubmodifTextController?.dispose();
  }
}
