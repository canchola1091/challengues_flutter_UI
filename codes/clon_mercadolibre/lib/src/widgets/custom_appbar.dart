
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          IconButton(
            icon: Icon(Icons.menu, size: 32.0), 
            onPressed: () {}
          ),

          _inputSearch(),

          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, size: 32.0), 
            onPressed: () {}
          ),

        ],
      ),
    );
  }

  Widget _inputSearch() {
    return SizedBox(
      height: 45.0,
      width: 290.0,
      child: TextField(
        expands: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54, width: 1.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white54, width: 3.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.grey, size: 25.0),
          hintText: 'Buscar en Mercado Libre',
          hintStyle: TextStyle( color: Colors.grey, fontSize: 15.0 ),
          isDense: true,
          hoverColor: Colors.white,
          focusColor: Colors.white,
        ),
      ),
    );
  }

}