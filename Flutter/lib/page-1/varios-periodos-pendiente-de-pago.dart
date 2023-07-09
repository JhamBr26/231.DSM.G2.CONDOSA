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
        // variosperiodospendientedepagoM (1:379)
        width: double.infinity,
        height: 878*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group10gRM (1:380)
          width: 421*fem,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe6e6e6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupfu91c47 (7m5FAdvAyNkFoMresNFu91)
                width: double.infinity,
                height: 242.27*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // headerws5 (1:382)
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
                              // vectorpfy (1:385)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0.31*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 22.17*fem,
                                  height: 21.39*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-Tew.png',
                                    width: 22.17*fem,
                                    height: 21.39*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // recibospormantenimientoWHu (1:384)
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
                              // vectorp3h (1:386)
                              width: 26.83*fem,
                              height: 25.24*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-JK9.png',
                                width: 26.83*fem,
                                height: 25.24*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // deudatotal9rf (1:387)
                      left: 0*fem,
                      top: 74*fem,
                      child: Container(
                        width: 421*fem,
                        height: 168.27*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5snf (1:388)
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
                              // nombreyapellidosdelusuario9kB (1:389)
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
                              // cdigodelusuario0023134nombrede (1:390)
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
                              // group1vns (1:391)
                              left: 0*fem,
                              top: 127*fem,
                              child: Container(
                                width: 215.84*fem,
                                height: 41.27*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle7quq (1:392)
                                      left: 1*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 214.84*fem,
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
                                      // pendientesdepagovRV (1:393)
                                      left: 50.4996109009*fem,
                                      top: 11.0312805176*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 117*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Pendientes de pago',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 12*ffem,
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
                            ),
                            Positioned(
                              // group21C3 (1:395)
                              left: 216.8332519531*fem,
                              top: 127*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 204.17*fem,
                                  height: 38.27*fem,
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
                                  child: Center(
                                    child: Text(
                                      'Pagados',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Inter',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
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
                // autogroup4vpo2N3 (7m5FSiHijwV1K3J83P4vpo)
                padding: EdgeInsets.fromLTRB(0*fem, 98.73*fem, 0*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // mes1xFh (1:398)
                      margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 33.17*fem, 31.67*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // abril2023gBh (1:399)
                            margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 12.27*fem),
                            child: Text(
                              'ABRIL 2023',
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
                            // autogroupemv7Bu9 (7m5FiTLVNfm2T4xHXDeMv7)
                            padding: EdgeInsets.fromLTRB(19.67*fem, 14.63*fem, 12.83*fem, 12.16*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x2d000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(12*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroup8hyss1H (7m5FqXy2Vg43tAJWzU8HYs)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 10.5*fem, 3.76*fem),
                                  width: double.infinity,
                                  height: 20.26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // reciboabrilBXm (1:401)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.24*fem, 173.17*fem, 0*fem),
                                        child: Text(
                                          'Recibo abril',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // group3Hao (1:402)
                                        width: 66.5*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffff8989),
                                          borderRadius: BorderRadius.circular(7*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Sin pagar',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 9*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // cdigo002512mF5 (1:406)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  child: Text(
                                    'Código 002512',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 9*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // venceel30042023gN3 (1:405)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.89*fem),
                                  child: Text(
                                    'Vence el 30/04/2023',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 9*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff6d6d6d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // line2PnF (1:408)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 0*fem, 7.6*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x38000000),
                                  ),
                                ),
                                Container(
                                  // autogroupurqbKA7 (7m5FwcdEDAxtCJJqPBuRQB)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 9.33*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // montos22952cuu (1:407)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 190.5*fem, 0.45*fem),
                                        child: Text(
                                          'Monto: S/ 229.52',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 11*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // vectorVTu (1:409)
                                        width: 30.33*fem,
                                        height: 19.76*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-it7.png',
                                          width: 30.33*fem,
                                          height: 19.76*fem,
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
                    Container(
                      // mes2CdD (1:410)
                      margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 33.17*fem, 145.13*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // mayo2023KC3 (1:411)
                            margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 12.27*fem),
                            child: Text(
                              'MAYO 2023',
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
                            // autogroupegzdQjH (7m5GWmLf9opaLcXgokEGZD)
                            padding: EdgeInsets.fromLTRB(19.83*fem, 14.63*fem, 12.83*fem, 12.16*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x2d000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(12*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupgblbTBm (7m5GdvoPZGjHN7pkCYGbLb)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.5*fem, 3.65*fem),
                                  width: double.infinity,
                                  height: 20.26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // recibomayox8X (1:415)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.24*fem, 166.17*fem, 0*fem),
                                        child: Text(
                                          'Recibo mayo',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // group33fm (1:416)
                                        width: 66.5*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffff8989),
                                          borderRadius: BorderRadius.circular(7*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Sin pagar',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 9*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2125*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // cdigo002612iX1 (1:414)
                                  margin: EdgeInsets.fromLTRB(0.33*fem, 0*fem, 0*fem, 4*fem),
                                  child: Text(
                                    'Código 002612',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 9*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // venceel30052023Dif (1:413)
                                  margin: EdgeInsets.fromLTRB(0.33*fem, 0*fem, 0*fem, 12*fem),
                                  child: Text(
                                    'Vence el 30/05/2023',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 9*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: Color(0xff6d6d6d),
                                    ),
                                  ),
                                ),
                                Container(
                                  // line2WSs (1:420)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.6*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x38000000),
                                  ),
                                ),
                                Container(
                                  // autogroupvl3hqzw (7m5GjvdPzK2S5qtEfiVL3H)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.83*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // montos17240aBq (1:419)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188*fem, 0.45*fem),
                                        child: Text(
                                          'Monto: S/ 172.40',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 11*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // vectorGaT (1:421)
                                        width: 30.33*fem,
                                        height: 19.76*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-rij.png',
                                          width: 30.33*fem,
                                          height: 19.76*fem,
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
                    Container(
                      // navbaroaP (1:422)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(66.5*fem, 19.25*fem, 67.67*fem, 16.53*fem),
                      width: 420*fem,
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
                            // vectorUwR (1:424)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99.17*fem, 3.23*fem),
                            width: 29.17*fem,
                            height: 24.15*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Qxf.png',
                              width: 29.17*fem,
                              height: 24.15*fem,
                            ),
                          ),
                          Container(
                            // vectorzes (1:426)
                            margin: EdgeInsets.fromLTRB(0*fem, 2.2*fem, 99.17*fem, 0*fem),
                            width: 29.17*fem,
                            height: 29.57*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Pou.png',
                              width: 29.17*fem,
                              height: 29.57*fem,
                            ),
                          ),
                          Container(
                            // vector1ps (1:425)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                            width: 29.17*fem,
                            height: 29.11*fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-Uo9.png',
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
            ],
          ),
        ),
      ),
          );
  }
}