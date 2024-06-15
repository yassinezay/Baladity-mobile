import '/flutter_flow/flutter_flow_util.dart';
import '/tache/commentaire_t_a/commentaire_t_a_widget.dart';
import '/tache/commentaire_t_i/commentaire_t_i_widget.dart';
import 'detail_tache_widget.dart' show DetailTacheWidget;
import 'package:flutter/material.dart';

class DetailTacheModel extends FlutterFlowModel<DetailTacheWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for task widget.
  FocusNode? taskFocusNode1;
  TextEditingController? taskTextController1;
  String? Function(BuildContext, String?)? taskTextController1Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode2;
  TextEditingController? taskTextController2;
  String? Function(BuildContext, String?)? taskTextController2Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode3;
  TextEditingController? taskTextController3;
  String? Function(BuildContext, String?)? taskTextController3Validator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode4;
  TextEditingController? taskTextController4;
  String? Function(BuildContext, String?)? taskTextController4Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for task widget.
  FocusNode? taskFocusNode5;
  TextEditingController? taskTextController5;
  String? Function(BuildContext, String?)? taskTextController5Validator;
  // Model for CommentaireTI component.
  late CommentaireTIModel commentaireTIModel;
  // Models for CommentaireTA dynamic component.
  late FlutterFlowDynamicModels<CommentaireTAModel> commentaireTAModels;

  @override
  void initState(BuildContext context) {
    commentaireTIModel = createModel(context, () => CommentaireTIModel());
    commentaireTAModels = FlutterFlowDynamicModels(() => CommentaireTAModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taskFocusNode1?.dispose();
    taskTextController1?.dispose();

    taskFocusNode2?.dispose();
    taskTextController2?.dispose();

    taskFocusNode3?.dispose();
    taskTextController3?.dispose();

    taskFocusNode4?.dispose();
    taskTextController4?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    taskFocusNode5?.dispose();
    taskTextController5?.dispose();

    commentaireTIModel.dispose();
    commentaireTAModels.dispose();
  }
}
