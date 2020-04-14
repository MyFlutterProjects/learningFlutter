import 'package:flutter/material.dart';

void main() {
  runApp( 
   MaterialApp( 
     title: 'My app',
     debugShowCheckedModeBanner: false,
     home: MyScaffold(),
   ),
  );
}

class MyScaffold extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Material(  //material is a conceptual piece of paper on which the UI appears
      child: Column( 
        children: <Widget>[ 
          MyAppBar( 
            title: Text( 
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded( 
            child: Center( 
              child: Text('Hello, world'),
            ),
          )
        ], 
        ),
    );
  }
}

class MyAppBar extends StatelessWidget { 
  MyAppBar({this.title});

  // fiels in a widget subclass are always marked final
  final Widget title; 

  @override 
  Widget build(BuildContext context) { 
    return Container( 
      height:96.0, // in logical pixels
      // padding on the left and right 
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.pink[500]),

      child: Row( 
        children: <Widget>[
          IconButton( 
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: (){},
          ),
          // expanded fill all aviable space
          Expanded( 
            child: title,
          ),
          IconButton( 
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )


        ],
        ),


    );
  }
}

