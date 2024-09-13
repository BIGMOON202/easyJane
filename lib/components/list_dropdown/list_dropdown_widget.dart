import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_dropdown_model.dart';
export 'list_dropdown_model.dart';

class ListDropdownWidget extends StatefulWidget {
  const ListDropdownWidget({super.key});

  @override
  State<ListDropdownWidget> createState() => _ListDropdownWidgetState();
}

class _ListDropdownWidgetState extends State<ListDropdownWidget> {
  late ListDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListDropdownModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
