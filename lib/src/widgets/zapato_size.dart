import 'package:flutter/material.dart';

class ZapatoPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 430.0,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          children: <Widget>[
            //zapato con sombra

            _ZatatoSombra(),
            //todas las tallas
            _ZapatoTalla(),
          ],
        ),
      ),
    );
  }
}

class _ZatatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          /* Positioned(
            bottom: 20.0,
            right: 0,
            child: _SombraZapato(),
          ),*/
          _SombraZapato(),
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _SombraZapato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          width: 230.0,
          height: 120.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xffEAA14E),
                blurRadius: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ZapatoTalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _TallaCajaZapato(7),
          _TallaCajaZapato(7.5),
          _TallaCajaZapato(8),
          _TallaCajaZapato(8.5),
          _TallaCajaZapato(9),
          _TallaCajaZapato(9.5),
        ],
      ),
    );
  }
}

class _TallaCajaZapato extends StatelessWidget {
  final double numero;
  const _TallaCajaZapato(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: (this.numero==9)?Color(0xffF1A23A):Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if(this.numero==9)
            BoxShadow(color: Color(0xffF1A23A), blurRadius: 10.0, offset: Offset(0,5))


        ],
      ),
      child: Text(
        '${numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color:(this.numero==9)? Colors.white: Color(0xffF1A23A),
        ),
      ),
    );
  }
}
