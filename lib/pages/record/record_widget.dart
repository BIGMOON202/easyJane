import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:record/record.dart';
import 'record_model.dart';
export 'record_model.dart';

class RecordWidget extends StatefulWidget {
  const RecordWidget({super.key});

  @override
  State<RecordWidget> createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget>
    with TickerProviderStateMixin {
  late RecordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
      await startAudioRecording(
        context,
        audioRecorder: _model.audioRecorder ??= AudioRecorder(),
      );
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: 100.0,
            end: 0.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 100.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100.0,
              decoration: const BoxDecoration(
                color: Color(0xFF07202F),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xE6FFFFFF),
                        size: 28.0,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.hearing_sharp,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        Text(
                          'Easy Jane',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xD9FFFFFF),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Color(0xE6FFFFFF),
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0C344D), Color(0xEC0C344D)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.headphonesAlt,
                      color: FlutterFlowTheme.of(context).info,
                      size: 100.0,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xBEFFFFFF),
                                  shape: BoxShape.circle,
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF0C344D),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 36.0,
                                            height: 36.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFA10000),
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation']!),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Lottie.asset(
                                'assets/lottie_animations/loading_circle.json',
                                width: 135.0,
                                height: 135.0,
                                fit: BoxFit.cover,
                                animate: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowTimer(
                          initialTime: _model.timerInitialTimeMs,
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(value,
                                  milliSecond: false),
                          controller: _model.timerController,
                          updateStateInterval: const Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerMilliseconds = value;
                            _model.timerValue = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await stopAudioRecording(
                                  audioRecorder: _model.audioRecorder,
                                  audioName: 'recordedFileBytes.mp3',
                                  onRecordingComplete:
                                      (audioFilePath, audioBytes) {
                                    _model.recordingPath = audioFilePath;
                                    _model.recordedFileBytes = audioBytes;
                                  },
                                );

                                _model.timerController.onStopTimer();
                                _model.filenameChangedAudio =
                                    await actions.setFileNameToRandom(
                                  _model.recordedFileBytes,
                                );
                                _model.apiResultdk6 = await AddAudioCall.call(
                                  file: _model.filenameChangedAudio,
                                );

                                context.pushNamed('Listview');

                                safeSetState(() {});
                              },
                              text: 'Stop and Save',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF740404),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('HomePage');
                              },
                              text: 'Abort',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(const SizedBox(width: 24.0)),
                        ),
                      ].divide(const SizedBox(height: 20.0)),
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
