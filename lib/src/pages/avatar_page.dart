import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        // Nos permite poner widget en el appbar
        actions: <Widget>[
          Container(
            // Afecta el padding del contenedor
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('http://mouse.latercera.com/wp-content/uploads/2019/03/lee.jpg'),
              // Expresa el tamaño del avatar
              radius: 21.0,
            ),
          ),
          Container(
            // Permite modificar el margen de un lado del contenedor
            margin: EdgeInsets.only(right: 10.0),
            // Permite poner un avatar en el AppBar
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple
            ),
          )
        ],
      ),

      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://ichef.bbci.co.uk/news/660/cpsprodpb/A014/production/_104308904_gettyimages-618580352.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        ),
      ),
    );
  }
}