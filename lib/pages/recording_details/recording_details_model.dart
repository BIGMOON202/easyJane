import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recording_details_widget.dart' show RecordingDetailsWidget;
import 'package:flutter/material.dart';

class RecordingDetailsModel extends FlutterFlowModel<RecordingDetailsWidget> {
  ///  Local state fields for this page.

  dynamic recording;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getRecordingById] action in RecordingDetails widget.
  dynamic resultRecording;
  // Stores action output result for [Backend Call - API (summarizeAudio)] action in IconButton widget.
  ApiCallResponse? apiResult5de;
  // Stores action output result for [Custom Action - getRecordingById] action in IconButton widget.
  dynamic resultRecording1;
  // Stores action output result for [Backend Call - API (getAudioDetails)] action in IconButton widget.
  ApiCallResponse? apiResult5deCopy;
  // Stores action output result for [Custom Action - getRecordingById] action in IconButton widget.
  dynamic resultRecording2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
