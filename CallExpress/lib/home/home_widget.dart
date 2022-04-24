import '../auth/auth_util.dart';
import '../dhll/dhll_widget.dart';
import '../flash/flash_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../kerry/kerry_widget.dart';
import '../ninja/ninja_widget.dart';
import '../scgg/scgg_widget.dart';
import '../signin_signup_page/signin_signup_page_widget.dart';
import '../thaipost/thaipost_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFE9AF2D),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              'Choose your \nparacel delivery!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'PT Serif',
                  ),
            ),
          ),
          actions: [],
          elevation: 100,
        ),
      ),
      backgroundColor: Color(0xBBF8F6CE),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.64, 0.15),
                      child: Text(
                        'Kerry Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.73, -0.42),
                      child: Text(
                        'Thaipost Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.61, 0.7),
                      child: Text(
                        'Flash Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(50, 70, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThaipostWidget(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/thaipost.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(230, 70, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NinjaWidget(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/ninja.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.61, 0.58),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlashWidget(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/flash.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.66, -0.08),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DhllWidget(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/dhl-express.jpeg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.03, 0.92),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await signOut();
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninSignupPageWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        text: 'Logout',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFFEF9D39),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'PT Serif',
                                    color: Colors.black,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.66, 0.58),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScggWidget(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/scg.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.63, 0.7),
                      child: Text(
                        'SCG Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 280, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => KerryWidget(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/kerry1.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                        size: 1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.65, -0.43),
                      child: Text(
                        'Ninja Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.64, 0.15),
                      child: Text(
                        'DHL Express',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
