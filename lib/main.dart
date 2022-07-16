import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Buscar no Mercado Aberto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFEE32),
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              icon: new Icon(Icons.search),
              labelText: ("Pesquisar No Mercado Aberto"),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(100.0),
              )),
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        actions: [
          Center(
            child: Icon(Icons.add_shopping_cart),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_pin),
                Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56"),
              ]),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment(0.0, 0),
        colors: <Color>[
          Color(0xffFFEE32),
          Color(0xffFAF294),
          Color(0xfff5f5f5),
          Color(0xfff5f5f5),
        ],
        //     decoration: LinearGradient(
        //  colors: Color(0xfff4d415),
        //   Color(0xfff5f5f5),
      ))),
    );
  }
}
