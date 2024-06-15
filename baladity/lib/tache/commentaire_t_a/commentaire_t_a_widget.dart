import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'commentaire_t_a_model.dart';
export 'commentaire_t_a_model.dart';

class CommentaireTAWidget extends StatefulWidget {
  const CommentaireTAWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<CommentaireTAWidget> createState() => _CommentaireTAWidgetState();
}

class _CommentaireTAWidgetState extends State<CommentaireTAWidget> {
  late CommentaireTAModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentaireTAModel());

    _model.textField01TextController ??= TextEditingController();
    _model.textField01FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          controller: _model.textField01TextController,
          focusNode: _model.textField01FocusNode,
          autofocus: false,
          readOnly: true,
          obscureText: false,
          decoration: InputDecoration(
            labelText: widget.parameter1,
            labelStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  fontSize: 16.0,
                  letterSpacing: 4.0,
                ),
            hintStyle: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  fontSize: 16.0,
                  letterSpacing: 4.0,
                ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            contentPadding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                fontSize: 16.0,
                letterSpacing: 4.0,
              ),
          maxLines: 9,
          minLines: 5,
          validator:
              _model.textField01TextControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
