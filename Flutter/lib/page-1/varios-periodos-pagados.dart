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
        // variosperiodospagadosxkF (1:249)
        width: double.infinity,
        height: 878*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group10bwd (1:250)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffe6e6e6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup5bbdJr3 (7m59AtjwDYDDfiK1ch5bbd)
                width: double.infinity,
                height: 242.27*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // headerRvf (1:252)
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
                              // vectorYP1 (1:255)
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
                                    'assets/page-1/images/vector-u5q.png',
                                    width: 22.17*fem,
                                    height: 21.39*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // recibospormantenimientoCiT (1:254)
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
                              // vectorGiK (1:256)
                              width: 26.83*fem,
                              height: 25.24*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-KG3.png',
                                width: 26.83*fem,
                                height: 25.24*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // deudatotalc1V (1:257)
                      left: 0*fem,
                      top: 74*fem,
                      child: Container(
                        width: 420*fem,
                        height: 168.27*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle5JQ7 (1:258)
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
                              // nombreyapellidosdelusuariowT5 (1:259)
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
                              // cdigodelusuario0023134nombrede (1:260)
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
                              // group1uq9 (1:261)
                              left: 0*fem,
                              top: 127*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: 215.83*fem,
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
                                      'Pendientes de pago',
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
                            Positioned(
                              // group2LQf (1:264)
                              left: 215.8333129883*fem,
                              top: 127*fem,
                              child: Container(
                                width: 204.17*fem,
                                height: 41.27*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle8qcK (1:265)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 204.17*fem,
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
                                      // pagados85d (1:266)
                                      left: 76.5833740234*fem,
                                      top: 11.0312728882*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 51*fem,
                                          height: 15*fem,
                                          child: Text(
                                            'Pagados',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 12*ffem,
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroup5lhdQ39 (7m59b3iMWcdBjSSdLV5Lhd)
                padding: EdgeInsets.fromLTRB(32*fem, 38.73*fem, 32.17*fem, 41.13*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // mes1vGP (1:268)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24.67*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // enero2023FZZ (1:269)
                            margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 12.27*fem),
                            child: Text(
                              'ENERO 2023',
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
                            // autogroupwpa7a63 (7m59qscz2J8hLvhhfLWPA7)
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
                                  // autogroupiguu3EX (7m59zhhc6wM4EguHX1iguu)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 10.5*fem, 3.76*fem),
                                  width: double.infinity,
                                  height: 20.26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // reciboeneroxMV (1:271)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.24*fem, 164.17*fem, 0*fem),
                                        child: Text(
                                          'Recibo enero',
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
                                        // group34vK (1:272)
                                        width: 66.5*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffb5e696),
                                          borderRadius: BorderRadius.circular(7*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Pagado',
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
                                  // cdigo0023128vB (1:276)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                  child: Text(
                                    'Código 002312',
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
                                  // pagadoel27022023r5V (1:275)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.89*fem),
                                  child: Text(
                                    'Pagado el 27/02/2023',
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
                                  // line2mCT (1:278)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 0*fem, 7.6*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x38000000),
                                  ),
                                ),
                                Container(
                                  // autogroupnc2sVu9 (7m5A8ce64XnubuhnDhnc2s)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 9.33*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // montos135201sV (1:277)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 191.5*fem, 0.45*fem),
                                        child: Text(
                                          'Monto: S/ 135.20',
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
                                        // vectorXqq (1:279)
                                        width: 30.33*fem,
                                        height: 19.75*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-R8b.png',
                                          width: 30.33*fem,
                                          height: 19.75*fem,
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
                      // mes3TzP (1:292)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24.67*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // febrero2023ooM (1:293)
                            margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 12.27*fem),
                            child: Text(
                              'FEBRERO 2023',
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
                            // autogroupaz1y8Kq (7m5BWk1F3ydcP54eK9AZ1y)
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
                                  // autogroupnrmmPmZ (7m5Bfa5s8cqyGqGEApNrmm)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 10.5*fem, 3.65*fem),
                                  width: double.infinity,
                                  height: 20.26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // recibofebreroVZh (1:297)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.24*fem, 154*fem, 0*fem),
                                        child: Text(
                                          'Recibo febrero',
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
                                        // group3oaP (1:298)
                                        width: 66.5*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffb5e696),
                                          borderRadius: BorderRadius.circular(7*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Pagado',
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
                                  // cdigo002412geB (1:296)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 0*fem, 4*fem),
                                  child: Text(
                                    'Código 002412',
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
                                  // pagadoel29032023bm9 (1:295)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 0*fem, 12*fem),
                                  child: Text(
                                    'Pagado el 29/03/2023',
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
                                  // line2i55 (1:302)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.6*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x38000000),
                                  ),
                                ),
                                Container(
                                  // autogroupuobdeUX (7m5BmQFUzjukojS4nuUoBD)
                                  margin: EdgeInsets.fromLTRB(0.17*fem, 0*fem, 12.83*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // montos11050NvK (1:301)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.83*fem, 0.45*fem),
                                        child: Text(
                                          'Monto: S/ 110.50',
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
                                        // vectorVEF (1:303)
                                        width: 30.33*fem,
                                        height: 19.75*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-d1H.png',
                                          width: 30.33*fem,
                                          height: 19.75*fem,
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
                      // mes2pXR (1:280)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // marzo2023Noq (1:281)
                            margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 12.27*fem),
                            child: Text(
                              'MARZO 2023',
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
                            // autogroupaensgZd (7m5AiS15Gqa4VXVF2caeNs)
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
                                  // autogroup6amdxGF (7m5ArG7MwyQEGLLuom6AMD)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.5*fem, 3.65*fem),
                                  width: double.infinity,
                                  height: 20.26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // recibomarzose7 (1:285)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.24*fem, 161.17*fem, 0*fem),
                                        child: Text(
                                          'Recibo marzo',
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
                                        // group3yh9 (1:286)
                                        width: 66.5*fem,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xffb5e696),
                                          borderRadius: BorderRadius.circular(7*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Pagado',
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
                                  // cdigo0024124yV (1:284)
                                  margin: EdgeInsets.fromLTRB(0.33*fem, 0*fem, 0*fem, 4*fem),
                                  child: Text(
                                    'Código 002412',
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
                                  // pagadoel29032023neb (1:283)
                                  margin: EdgeInsets.fromLTRB(0.33*fem, 0*fem, 0*fem, 12*fem),
                                  child: Text(
                                    'Pagado el 29/03/2023',
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
                                  // line2Wab (1:290)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.6*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x38000000),
                                  ),
                                ),
                                Container(
                                  // autogroup6to13qR (7m5Axg6LoJmnx88Xtf6to1)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.83*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // montos11050zEs (1:289)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 189*fem, 0.45*fem),
                                        child: Text(
                                          'Monto: S/ 110.50',
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
                                        // vectorHzf (1:291)
                                        width: 30.33*fem,
                                        height: 19.76*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-x9D.png',
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
                  ],
                ),
              ),
              Container(
                // navbarc1M (1:304)
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
                      // vectorVqq (1:306)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99.17*fem, 3.23*fem),
                      width: 29.17*fem,
                      height: 24.15*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-kGo.png',
                        width: 29.17*fem,
                        height: 24.15*fem,
                      ),
                    ),
                    Container(
                      // vectorCkF (1:308)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.2*fem, 99.17*fem, 0*fem),
                      width: 29.17*fem,
                      height: 29.57*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-t2b.png',
                        width: 29.17*fem,
                        height: 29.57*fem,
                      ),
                    ),
                    Container(
                      // vectorvgF (1:307)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                      width: 29.17*fem,
                      height: 29.11*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-FbV.png',
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