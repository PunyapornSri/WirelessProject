import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DhlpreWidget extends StatefulWidget {
  const DhlpreWidget({Key key}) : super(key: key);

  @override
  _DhlpreWidgetState createState() => _DhlpreWidgetState();
}

class _DhlpreWidgetState extends State<DhlpreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FlutterFlowWebView(
            url:
                'https://dhltoyou.com/th/landing/express-shipping-sem?utm_source=sem&utm_medium=cpa&utm_campaign=mydhlplus&gclid=Cj0KCQjw6pOTBhCTARIsAHF23fLPJQHe_OV-IFlN8R0YOcQ_PiwhLpFhuH6heBQgpWMQ3efMEacCQOAaAp9hEALw_wcB',
            bypass: false,
            verticalScroll: false,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
