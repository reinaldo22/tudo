import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//Minhas classes
import 'componentes/listview_horizontal.dart';
import 'componentes/products.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Carossel
    Widget image_carousel = new Container(
      //Quanfor publicar para celular diminuir o height para 200
      height: 400.0,
      width: 400.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('image/c1.jpg'),
          AssetImage('image/m1.jpeg'),
          AssetImage('image/w1.jpeg'),
          AssetImage('image/w3.jpeg'),
          AssetImage('image/w4.jpeg')
        ],
        autoplay: true,
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );

    //APPBAR
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text("Fashapp"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),

      //DRAWER
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text("Reinaldo Vargas"),
              accountEmail: Text("vargas.reynaldo22@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.pink,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.pink),
            ),

            //CORPO DO DRAWER

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Minha Conta"),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Minhas Compras"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categorias"),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favoritos"),
                leading: Icon(Icons.favorite),
              ),
            ),

            //DIVISÃO DO DRAWER
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Configurações"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.greenAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Ajuda"),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text('Categorias')),

          //Listview
          ListViewHorizontal(),

          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text("Produtos Recentes"),
          ),

          //GRID VIEW
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
