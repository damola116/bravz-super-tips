import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'gold_model.dart';
export 'gold_model.dart';

class GoldWidget extends StatefulWidget {
  const GoldWidget({Key? key}) : super(key: key);

  @override
  _GoldWidgetState createState() => _GoldWidgetState();
}

class _GoldWidgetState extends State<GoldWidget> {
  late GoldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoldModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x4D090F13),
            offset: Offset(0, 2),
          )
        ],
        gradient: LinearGradient(
          colors: [Color(0xFFF0B756), FlutterFlowTheme.of(context).secondary],
          stops: [0, 1],
          begin: AlignmentDirectional(0, -1),
          end: AlignmentDirectional(0, 1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 134,
                        height: 33,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33A775A8),
                              offset: Offset(0, 2),
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFF2FB4C9), Color(0xFFFBFDFD)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'Six Months',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        width: 134,
                        height: 33,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33A775A8),
                              offset: Offset(0, 2),
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFE42E84), Color(0xFFFBFDFD)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          revenue_cat.offerings!.current!.sixMonth!.storeProduct
                              .priceString,
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                            fontFamily: 'Poppins',
                            color:
                            FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'Get all the features at a discount for  one  months membership.',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            width: 100,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0x2C4B39EF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Save 40%',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            _model.didpurchase3 =
                            await revenue_cat.purchasePackage(revenue_cat
                                .offerings!.current!.sixMonth!.identifier);
                            if (_model.didpurchase3!) {
                              context.pushNamed('listgold');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'unable to purchase',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }

                            setState(() {});
                          },
                          text: 'Buy',
                          options: FFButtonOptions(
                            width: 78,
                            height: 33,
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).success,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(110),
                              bottomRight: Radius.circular(110),
                              topLeft: Radius.circular(90),
                              topRight: Radius.circular(90),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
