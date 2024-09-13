import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
          mainAxisAlignment: MainAxisAlignment.start,
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
                    Container(
                      width: 1.0,
                      height: 1.0,
                      decoration: const BoxDecoration(),
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
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.headphonesAlt,
                            color: Color(0xD4FFFFFF),
                            size: 100.0,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 40.0,
                          ),
                          const Icon(
                            Icons.text_snippet_outlined,
                            color: Color(0xD4FFFFFF),
                            size: 100.0,
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!(await getPermissionStatus(
                            microphonePermission))) {
                          await requestPermission(microphonePermission);
                        }

                        context.pushNamed('Record');
                      },
                      child: Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7A0000),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.microphoneAlt,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            Text(
                              'Start Record',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 16.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Listview');
                      },
                      child: Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFAD8F3D),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.list_alt,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            Text(
                              'View Recordings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('splash', context.mounted);
                      },
                      text: 'Log Out',
                      options: FFButtonOptions(
                        width: 200.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).accent3,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 30.0))
                      .addToStart(const SizedBox(height: 100.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
