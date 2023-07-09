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
        // escogerperiodoJeb (1:338)
        width: double.infinity,
        height: 878*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group10T1h (1:339)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe6e6e6),
          ),
          child: Stack(
            children: [
              Positioned(
                // headerZqR (1:341)
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
                        // vectorr3q (1:344)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0.31*fem),
                        width: 22.17*fem,
                        height: 21.39*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector.png',
                          width: 22.17*fem,
                          height: 21.39*fem,
                        ),
                      ),
                      Container(
                        // recibospormantenimientoZU3 (1:343)
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
                        // vectorfGB (1:345)
                        width: 26.83*fem,
                        height: 25.24*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-EqM.png',
                          width: 26.83*fem,
                          height: 25.24*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // deudatotalodH (1:346)
                left: 0*fem,
                top: 74*fem,
                child: Container(
                  width: 420*fem,
                  height: 165.27*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle5KrX (1:347)
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
                        // nombreyapellidosdelusuarioCQX (1:348)
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
                        // cdigodelusuario0023134nombrede (1:349)
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
                        // rectangle7yi7 (1:350)
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
                        // elijaeltipodeconsultaHio (1:351)
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
              Positioned(
                // navbarmts (1:352)
                left: 0*fem,
                top: 810.4615478516*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(66.5*fem, 19.25*fem, 67.67*fem, 16.53*fem),
                  width: 420*fem,
                  height: 67.54*fem,
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
                        // vectorT11 (1:354)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99.17*fem, 3.23*fem),
                        width: 29.17*fem,
                        height: 24.14*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-Rs5.png',
                          width: 29.17*fem,
                          height: 24.14*fem,
                        ),
                      ),
                      Container(
                        // vectorm1h (1:356)
                        margin: EdgeInsets.fromLTRB(0*fem, 2.2*fem, 99.17*fem, 0*fem),
                        width: 29.17*fem,
                        height: 29.57*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-JHM.png',
                          width: 29.17*fem,
                          height: 29.57*fem,
                        ),
                      ),
                      Container(
                        // vectorUwh (1:355)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                        width: 29.17*fem,
                        height: 29.11*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-2BZ.png',
                          width: 29.17*fem,
                          height: 29.11*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // rectangle21Csh (1:357)
                left: 56*fem,
                top: 285*fem,
                child: Align(
                  child: SizedBox(
                    width: 307*fem,
                    height: 220*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
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
                // rectangle226CP (1:358)
                left: 56*fem,
                top: 543*fem,
                child: Align(
                  child: SizedBox(
                    width: 307*fem,
                    height: 221*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                        color: Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
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
                // n5D (1:359)
                left: 156*fem,
                top: 286*fem,
                child: Align(
                  child: SizedBox(
                    width: 207*fem,
                    height: 219*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15*fem),
                      child: Image.asset(
                        'assets/page-1/images/-mUj.png',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // unsoloperiodoggP (1:360)
                left: 92*fem,
                top: 323*fem,
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
                // ArT (1:361)
                left: 172*fem,
                top: 571*fem,
                child: Align(
                  child: SizedBox(
                    width: 191*fem,
                    height: 193*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15*fem),
                      child: Image.asset(
                        'assets/page-1/images/-2sh.png',
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // variosperiodos6EK (1:362)
                left: 92*fem,
                top: 581*fem,
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
                // curvedarrowC2T (1:363)
                left: 92*fem,
                top: 454*fem,
                child: Align(
                  child: SizedBox(
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/curved-arrow-Puq.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                // curvedarrowX4j (1:364)
                left: 92*fem,
                top: 712*fem,
                child: Align(
                  child: SizedBox(
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/curved-arrow-3nf.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle15dtT (1:365)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 420*fem,
                    height: 878*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        color: Color(0x4c000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // group21ANb (1:366)
                left: 91*fem,
                top: 371*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(45.18*fem, 21*fem, 45*fem, 39.21*fem),
                  width: 253*fem,
                  height: 250*fem,
                  decoration: BoxDecoration (
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20*fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // seleccioneunperiodoSqu (1:368)
                        margin: EdgeInsets.fromLTRB(0.82*fem, 0*fem, 0*fem, 9.51*fem),
                        child: Text(
                          'Seleccione un periodo',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupcyvjLgP (7m5EkyvvP42PJ7PzgqcYvj)
                        width: double.infinity,
                        height: 163.28*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle1758B (1:369)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 162.64*fem,
                                  height: 163.28*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                      border: Border.all(color: Color(0x4c000000)),
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // yUT (1:370)
                              left: 40.7574157715*fem,
                              top: 55.4908447266*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 82*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Marzo 2023',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // 5XV (1:371)
                              left: 34.7574157715*fem,
                              top: 84.4908447266*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 92*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Febrero 2023',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // z8f (1:372)
                              left: 42.2574157715*fem,
                              top: 113.4908447266*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 79*fem,
                                  height: 17*fem,
                                  child: Text(
                                    'Enero 2023',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group28h35 (1:373)
                              left: 0.8214111328*fem,
                              top: 23.4908447266*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 159.87*fem,
                                  height: 21*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle23CVd (1:374)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 150*fem,
                                            height: 21*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                color: Color(0xffd9d9d9),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // abril2023iTy (1:375)
                                        left: 44.9360046387*fem,
                                        top: 3*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 72*fem,
                                            height: 17*fem,
                                            child: Text(
                                              'Abril 2023',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Inter',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w600,
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
                            ),
                            Positioned(
                              // group27c3Z (1:376)
                              left: 150.8214111328*fem,
                              top: 0.4908447266*fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(1*fem, 1*fem, 1*fem, 1*fem),
                                width: 12*fem,
                                height: 162*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0x4c000000)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.only (
                                    topRight: Radius.circular(10*fem),
                                    bottomRight: Radius.circular(10*fem),
                                  ),
                                ),
                                child: Align(
                                  // rectangle196Dd (1:378)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: 34*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffd9d9d9),
                                        borderRadius: BorderRadius.only (
                                          topRight: Radius.circular(10*fem),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}