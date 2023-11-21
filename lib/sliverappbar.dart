import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SliverAppBar',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {

  final rnd = new Random();

  final List<Color> colores = [
    Colors.black,
    Colors.redAccent,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.white54,
    Colors.red,
    Colors.cyan,
    Colors.deepOrangeAccent,
    Colors.blueGrey,

  ];

  @override
  Widget build(BuildContext context) {

    final List<Widget> items = List.generate(100, (i) => Container(
        width: double.infinity,
        height: 150,
        color: colores[ rnd.nextInt(this.colores.length) ]
    ));


    //return Scaffold(
    //  body: ListView.builder(
    //      itemBuilder: (BuildContext contex, int index) {
    //        return items[index];
    //      })
    // );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget> [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('SliverAppBar'),
            expandedHeight: 200,
            flexibleSpace: Image.network(
                'https://cdn.sharechat.com/14c8993_1667796946852_sc.jpeg?f=14c8993_1667796946852_sc.jpeg&referrer=tag-f5e-service&tenant=sc',
                fit: BoxFit.cover,
                 ),

          ),

          SliverList(
              delegate: SliverChildListDelegate(items)
          ),
        ],
      ),

    );
  }
}
