import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class ScgpreWidget extends StatefulWidget {
  const ScgpreWidget({Key key}) : super(key: key);

  @override
  _ScgpreWidgetState createState() => _ScgpreWidgetState();
}

class _ScgpreWidgetState extends State<ScgpreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                url: 'https://www.scgexpress.co.th/pickup-service/',
                bypass: false,
                width: 1000,
                height: 1000,
                verticalScroll: false,
                horizontalScroll: false,
              ),
              Html(
                data: '<h3>H3 Header</h3> <p>Sample paragraph</p>',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
