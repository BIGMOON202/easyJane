import '/components/record_card/record_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'listview_widget.dart' show ListviewWidget;
import 'package:flutter/material.dart';

class ListviewModel extends FlutterFlowModel<ListviewWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  dynamic filteredRecords;

  ///  State fields for stateful widgets in this page.

  // State field(s) for selection widget.
  FormFieldController<String>? selectionValueController;
  DateTime? datePicked;
  // Models for record_card dynamic component.
  late FlutterFlowDynamicModels<RecordCardModel> recordCardModels;

  @override
  void initState(BuildContext context) {
    recordCardModels = FlutterFlowDynamicModels(() => RecordCardModel());
  }

  @override
  void dispose() {
    recordCardModels.dispose();
  }

  /// Additional helper methods.
  String? get selectionValue => selectionValueController?.value;
}
