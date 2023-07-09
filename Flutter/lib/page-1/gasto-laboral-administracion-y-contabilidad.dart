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
        // gastolaboraladministracionycon (1:427)
        width: double.infinity,
        height: 878*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group11nzb (1:428)
          width: 421*fem,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe6e6e6),
          ),
          child: Stack(
            children: [
              Positioned(
                // headerXBV (1:430)
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
                        // vector1MZ (1:433)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.83*fem, 0.31*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 22.17*fem,
                            height: 21.39*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-njq.png',
                              width: 22.17*fem,
                              height: 21.39*fem,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // detalledereciboVnX (1:432)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 187.33*fem, 1.85*fem),
                        child: Text(
                          'Detalle de recibo',
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
                        // vectorPd1 (1:434)
                        width: 26.83*fem,
                        height: 25.24*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-22B.png',
                          width: 26.83*fem,
                          height: 25.24*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // deudatotalvcw (1:435)
                left: 0*fem,
                top: 74.2922973633*fem,
                child: Container(
                  width: 421*fem,
                  height: 140.33*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle5F9R (1:436)
                        left: 0*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 420*fem,
                            height: 137.33*fem,
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
                        // totals22952h1R (1:437)
                        left: 307*fem,
                        top: 34.7077026367*fem,
                        child: Align(
                          child: SizedBox(
                            width: 76*fem,
                            height: 39*fem,
                            child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Total\n',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'S/ 229.52',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // marzoCsH (1:438)
                        left: 33.8333740234*fem,
                        top: 24.0154418945*fem,
                        child: Align(
                          child: SizedBox(
                            width: 83*fem,
                            height: 17*fem,
                            child: Text(
                              'Abril - 2023',
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
                        // cdigofechadeemisinfechadevenci (1:439)
                        left: 34*fem,
                        top: 44.7077026367*fem,
                        child: Align(
                          child: SizedBox(
                            width: 114*fem,
                            height: 41*fem,
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
                                    text: 'Código\nFecha de emisión\n',
                                  ),
                                  TextSpan(
                                    text: 'Fecha de vencimiento',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 11*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xffff0000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // barLEj (1:440)
                        left: 1*fem,
                        top: 98.7077026367*fem,
                        child: Container(
                          width: 420*fem,
                          height: 41.62*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle8eFR (1:441)
                                left: 0*fem,
                                top: 0.3487548828*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 420*fem,
                                    height: 38.27*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
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
                                // group128RV (1:442)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 53.17*fem,
                                  height: 41.62*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle13Fm1 (1:443)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 52.5*fem,
                                            height: 39*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // calculatorywu (1:444)
                                        left: 15*fem,
                                        top: 8*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 22*fem,
                                            height: 22*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/calculator.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // group13uKm (1:446)
                                left: 52.5*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(16.5*fem, 10*fem, 16.5*fem, 9.5*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // groupCJs (1:448)
                                    child: SizedBox(
                                      width: 19.5*fem,
                                      height: 19.5*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group.png',
                                        width: 19.5*fem,
                                        height: 19.5*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group197Rq (1:454)
                                left: 105*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(15*fem, 8*fem, 14.5*fem, 8*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // buildingpr3 (1:456)
                                    child: SizedBox(
                                      width: 23*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/building.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group18Mqy (1:457)
                                left: 157.5*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14.5*fem, 8*fem, 15*fem, 8*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // barbell4kP (1:459)
                                    child: SizedBox(
                                      width: 23*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/barbell.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group17QJT (1:460)
                                left: 210*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 18.5*fem, 12*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // vectorKAX (1:462)
                                    child: SizedBox(
                                      width: 16*fem,
                                      height: 16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-PUs.png',
                                        width: 16*fem,
                                        height: 16*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group16EYP (1:463)
                                left: 262.5*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14.5*fem, 8*fem, 15*fem, 8*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // generalledgerLrK (1:465)
                                    child: SizedBox(
                                      width: 23*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/general-ledger.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group15g9V (1:466)
                                left: 315*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(15*fem, 8*fem, 14.5*fem, 8*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // toolsPJo (1:468)
                                    child: SizedBox(
                                      width: 23*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/tools.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group148GP (1:469)
                                left: 367.5*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14.5*fem, 8*fem, 15*fem, 8*fem),
                                  width: 52.5*fem,
                                  height: 39*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Center(
                                    // disclaimerSns (1:471)
                                    child: SizedBox(
                                      width: 23*fem,
                                      height: 23*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/disclaimer.png',
                                        fit: BoxFit.contain,
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
              ),
              Positioned(
                // rectangle12zJb (1:472)
                left: 0*fem,
                top: 212*fem,
                child: Align(
                  child: SizedBox(
                    width: 420*fem,
                    height: 666*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        color: Color(0xffe7e7e7),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // navbaruRZ (1:473)
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
                        // vectorAsH (1:475)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99.17*fem, 3.23*fem),
                        width: 29.17*fem,
                        height: 24.15*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-ZWf.png',
                          width: 29.17*fem,
                          height: 24.15*fem,
                        ),
                      ),
                      Container(
                        // vectorgKq (1:477)
                        margin: EdgeInsets.fromLTRB(0*fem, 2.2*fem, 99.17*fem, 0*fem),
                        width: 29.17*fem,
                        height: 29.57*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-6Qf.png',
                          width: 29.17*fem,
                          height: 29.57*fem,
                        ),
                      ),
                      Container(
                        // vectorCZ5 (1:476)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                        width: 29.17*fem,
                        height: 29.11*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-tiT.png',
                          width: 29.17*fem,
                          height: 29.11*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // rectangle9XLT (1:478)
                left: 18*fem,
                top: 238*fem,
                child: Align(
                  child: SizedBox(
                    width: 383*fem,
                    height: 552*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(12*fem),
                        border: Border.all(color: Color(0x2d000000)),
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
                // rectangle10zzj (1:479)
                left: 18*fem,
                top: 747*fem,
                child: Align(
                  child: SizedBox(
                    width: 383*fem,
                    height: 43*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0x2d000000)),
                        color: Color(0xfff4f4f4),
                        borderRadius: BorderRadius.only (
                          bottomRight: Radius.circular(12*fem),
                          bottomLeft: Radius.circular(12*fem),
                        ),
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
                // group265WP (1:480)
                left: 28.7282714844*fem,
                top: 750*fem,
                child: Container(
                  width: 349.86*fem,
                  height: 39*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupx6e3Pmy (7m5JjhdpSABJohpjt2x6e3)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 160.44*fem, 0*fem),
                        width: 117.42*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // group21K9q (1:482)
                              left: 0*fem,
                              top: 0*fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(15.27*fem, 7*fem, 16.05*fem, 7*fem),
                                width: 56.32*fem,
                                height: 39*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xfffaf8f8),
                                ),
                                child: Center(
                                  // billcud (1:485)
                                  child: SizedBox(
                                    width: 25*fem,
                                    height: 25*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/bill.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // subtotalxib (1:484)
                              left: 50.4228515625*fem,
                              top: 10*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 67*fem,
                                  height: 20*fem,
                                  child: Text(
                                    'Subtotal',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w700,
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
                      Container(
                        // s11658rZ5 (1:481)
                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                        child: Text(
                          'S/ 116.58',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group25mvw (1:486)
                left: 58*fem,
                top: 545*fem,
                child: Container(
                  width: 302*fem,
                  height: 16*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle18go1 (1:489)
                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 7*fem, 0*fem),
                        width: 9*fem,
                        height: 9*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff00bdae),
                        ),
                      ),
                      Container(
                        // gastosdeplanilla1qH (1:487)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 0*fem),
                        child: Text(
                          'Gastos de planilla',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Text(
                        // s9587vhM (1:488)
                        'S/ 95.87',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group244Yf (1:490)
                left: 58*fem,
                top: 569*fem,
                child: Container(
                  width: 299*fem,
                  height: 32*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // rectangle18Paw (1:493)
                        margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 7*fem, 0*fem),
                        width: 9*fem,
                        height: 9*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff404041),
                        ),
                      ),
                      Container(
                        // gastosdeadministracinycontabil (1:491)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63*fem, 0*fem),
                        constraints: BoxConstraints (
                          maxWidth: 169*fem,
                        ),
                        child: Text(
                          'Gastos de administración y contabilidad',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Text(
                        // s2071DK5 (1:492)
                        'S/ 20.71',
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // gastolaboraladministracinycont (1:494)
                left: 48.5*fem,
                top: 272.5*fem,
                child: Center(
                  child: Align(
                    child: SizedBox(
                      width: 323*fem,
                      height: 19*fem,
                      child: Text(
                        'Gasto laboral, administración y contabilidad',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // image4cMD (1:495)
                left: 44*fem,
                top: 350*fem,
                child: Align(
                  child: SizedBox(
                    width: 333*fem,
                    height: 136*fem,
                    child: Image.asset(
                      'assets/page-1/images/image-4.png',
                    ),
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