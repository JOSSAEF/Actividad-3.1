import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: null,
              ),
              ListTile(
                title: Text('Menu 2'), onTap: null)
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Menu Drawer"),
          bottom: const TapBar(tabs: [
            Tab(icon: Icon(Icons.direction_car)),
            Tab(icon: Icon(Icons.direction_transit)),
            Tab(icon: Icon(Icons.direction_bike)),
          ]),
        ),
        body: const TapBarView(children: [
          Column(
            children: [
              Icon(Icons.direction_car),
              Text("Aqui puedo poner el contenido")
            ],
          ),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            final snackBar = SnackBar(
              content: const Text('Hola! Soy una SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: (){

                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}