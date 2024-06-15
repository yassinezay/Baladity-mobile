import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajouter_publicite_widget.dart' show AjouterPubliciteWidget;
import 'package:flutter/material.dart';

class AjouterPubliciteModel extends FlutterFlowModel<AjouterPubliciteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for choisirActualite widget.
  String? choisirActualiteValue;
  FormFieldController<String>? choisirActualiteValueController;
  // State field(s) for titre_oub widget.
  FocusNode? titreOubFocusNode;
  TextEditingController? titreOubTextController;
  String? Function(BuildContext, String?)? titreOubTextControllerValidator;
  String? _titreOubTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'u8wrs42o' /* veuillez remplir ce champ */,
      );
    }

    if (val.length < 3) {
      return FFLocalizations.of(context).getText(
        'r916rh5f' /* longueur doit etre superieur à... */,
      );
    }
    if (val.length > 15) {
      return FFLocalizations.of(context).getText(
        'vcqqylq9' /* longueur doit etre inférieur à... */,
      );
    }

    return null;
  }

  // State field(s) for description_pub widget.
  FocusNode? descriptionPubFocusNode;
  TextEditingController? descriptionPubTextController;
  String? Function(BuildContext, String?)?
      descriptionPubTextControllerValidator;
  String? _descriptionPubTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gul5o5ip' /* veuillez remplir ce champ svp */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'n42hahth' /* la longueur de la description ... */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        's3rrjalj' /* la longueur de la description ... */,
      );
    }

    return null;
  }

  // State field(s) for localisation_pub widget.
  FocusNode? localisationPubFocusNode;
  TextEditingController? localisationPubTextController;
  String? Function(BuildContext, String?)?
      localisationPubTextControllerValidator;
  String? _localisationPubTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uy197dsk' /* veuillez remplir ce champ */,
      );
    }

    return null;
  }

  // State field(s) for num_pub widget.
  FocusNode? numPubFocusNode;
  TextEditingController? numPubTextController;
  String? Function(BuildContext, String?)? numPubTextControllerValidator;
  String? _numPubTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c2t80dcq' /* veuillez remplir ce champ avec... */,
      );
    }

    return null;
  }

  // State field(s) for offre_pub widget.
  String? offrePubValue;
  FormFieldController<String>? offrePubValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    titreOubTextControllerValidator = _titreOubTextControllerValidator;
    descriptionPubTextControllerValidator =
        _descriptionPubTextControllerValidator;
    localisationPubTextControllerValidator =
        _localisationPubTextControllerValidator;
    numPubTextControllerValidator = _numPubTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreOubFocusNode?.dispose();
    titreOubTextController?.dispose();

    descriptionPubFocusNode?.dispose();
    descriptionPubTextController?.dispose();

    localisationPubFocusNode?.dispose();
    localisationPubTextController?.dispose();

    numPubFocusNode?.dispose();
    numPubTextController?.dispose();
  }
}
