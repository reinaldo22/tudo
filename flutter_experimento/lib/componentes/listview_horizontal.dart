import 'package:flutter/material.dart';

class ListViewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categoria(
            image_location: 'image/cats/tshirt.png',
            image_caption: 'Camisas',
          ),
          Categoria(
            image_location: 'image/cats/accessories.png',
            image_caption: 'Acessorio',
          ),
          Categoria(
            image_location: 'image/cats/dress.png',
            image_caption: 'Vestido',
          ),
          Categoria(
            image_location: 'image/cats/formal.png',
            image_caption: 'Formal',
          ),
          Categoria(
            image_location: 'image/cats/informal.png',
            image_caption: 'Informal',
          ),
          Categoria(
            image_location: 'image/cats/jeans.png',
            image_caption: 'Jeans',
          ),
          Categoria(
            image_location: 'image/cats/shoe.png',
            image_caption: 'Camisas',
          ),
        ],
      ),
    );
  }
}

class Categoria extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categoria({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,

          child: ListTile(
            title: Image.asset(
                image_location, 
                width: 100.0,
                height: 80.0),
            
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
