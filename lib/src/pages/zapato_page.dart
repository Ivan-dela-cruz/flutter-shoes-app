import 'package:flutter/material.dart';
import 'package:flutter_app_interface/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //body: CustomAppBar(texto: 'For you',),
     // body: ZapatoPreview(),
      body: Column(
        children: <Widget>[
          CustomAppBar(texto: 'For you',),
          SizedBox(height: 20.0,),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ZapatoPreview(),
                  ZapatoDescripcion(
                    titulo: 'Nike Air 720',
                    descripcion: 'Zapatos de cuero hechos a mano por artesanos ecuatorianos. Cuero 100% natural, "Zapatos de alta calidad". Botines, oxfords y mocasines... casuale',
                  ),

                ],
              ),
            ),
          ),
          AgregarCarritoBoton(monto: 20.00),
        ],
      ),
    );
  }
}

