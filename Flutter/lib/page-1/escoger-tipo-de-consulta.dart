import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 420;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // escogertipodeconsultaq6w (1:309)
        width: double.infinity,
        height: 878*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group10Mb5 (1:310)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe6e6e6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupflpr62s (7m5DVGYkEwZFCjpkgJFLPR)
                width: double.infinity,
                height: 239.27*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // headerdYb (1:312)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(26.83*fem, 25.24*fem, 21*fem, 38.44*fem),
                        width: 420*fem,
                        height: 88.93*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000080),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vectoruFD (1:315)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0.31*fem),
                              width: 22.17*fem,
                              height: 21.39*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-7aP.png',
                                width: 22.17*fem,
                                height: 21.39*fem,
                              ),
                            ),
                            Container(
                              // recibospormantenimientoorP (1:314)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109.17*fem, 0.73*fem),
                              child: Text(
                                'Recibos por mantenimiento',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // vectortsq (1:316)
                              width: 26.83*fem,
                              height: 25.24*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-mdq.png',
                                width: 26.83*fem,
                                height: 25.24*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // deudatotalpmV (1:317)
                      left: 0*fem,
                      top: 74*fem,
                      child: Container(
                        width: 420*fem,
                        height: 165.27*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5LUw (1:318)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 420*fem,
                                  height: 165*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.only (
                                        topLeft: Radius.circular(15*fem),
                                        topRight: Radius.circular(15*fem),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x26868686),
                                          offset: Offset(0*fem, 4*fem),
                                          blurRadius: 2*fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // nombreyapellidosdelusuarioCn3 (1:319)
                              left: 31*fem,
                              top: 27*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 215*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Nombre y Apellidos del Usuario',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // cdigodelusuario0023134nombrede (1:320)
                              left: 31*fem,
                              top: 46*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 164*fem,
                                  height: 42*fem,
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 11*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Código del usuario: 0023134\n',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Nombre del predio\nID Casa',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rectangle7o9Z (1:321)
                              left: 0*fem,
                              top: 114*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 420*fem,
                                  height: 51.27*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0x19000000)),
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // elijaeltipodeconsulta7AF (1:322)
                              left: 31*fem,
                              top: 131*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 158*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Elija el tipo de consulta:',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupenwknnB (7m5DjLydCVXcUWaPhFenWK)
                padding: EdgeInsets.fromLTRB(56*fem, 45.73*fem, 57*fem, 46.46*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // unsoloperiodoJkX (1:328)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 38*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 220*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(15*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(0*fem, 4*fem),
                                blurRadius: 2*fem,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // kcX (1:330)
                                left: 100*fem,
                                top: 1*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 207*fem,
                                    height: 219*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/-No9.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // unsoloperiodoTG3 (1:331)
                                left: 36*fem,
                                top: 38*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 116*fem,
                                    height: 73*fem,
                                    child: Text(
                                      'Un solo periodo',
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 30*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // curvedarrow9ef (1:332)
                                left: 36*fem,
                                top: 169*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 30*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/curved-arrow-HS7.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // variosperiodosApf (1:333)
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 221*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15*fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0*fem, 4*fem),
                              blurRadius: 2*fem,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // EpX (1:335)
                              left: 116*fem,
                              top: 28*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 191*fem,
                                  height: 193*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // variosperiodosxkX (1:336)
                              left: 36*fem,
                              top: 38*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 129*fem,
                                  height: 73*fem,
                                  child: Text(
                                    'Varios Periodos',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 30*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // curvedarrowFzX (1:337)
                              left: 36*fem,
                              top: 169*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/curved-arrow.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // navbarBdH (1:323)
                padding: EdgeInsets.fromLTRB(66.5*fem, 19.25*fem, 67.67*fem, 16.53*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(30*fem),
                    topRight: Radius.circular(30*fem),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // vector5if (1:325)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99.17*fem, 3.23*fem),
                      width: 29.17*fem,
                      height: 24.14*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-6By.png',
                        width: 29.17*fem,
                        height: 24.14*fem,
                      ),
                    ),
                    Container(
                      // vectorPDZ (1:327)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.2*fem, 99.17*fem, 0*fem),
                      width: 29.17*fem,
                      height: 29.57*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-DtT.png',
                        width: 29.17*fem,
                        height: 29.57*fem,
                      ),
                    ),
                    Container(
                      // vector67y (1:326)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                      width: 29.17*fem,
                      height: 29.11*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-zVm.png',
                        width: 29.17*fem,
                        height: 29.11*fem,
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