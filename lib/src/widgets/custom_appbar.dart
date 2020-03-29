import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final String texto;

  CustomAppBar({
    @required this.texto
});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          width: double.infinity,
         // color: Colors.red,
          child: Row(
            children: <Widget>[
              Text(
                this.texto,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Icon(Icons.search,
                size: 30.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
