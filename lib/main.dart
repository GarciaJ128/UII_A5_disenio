import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mostrar imagenes Garcia",
              style: TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xFF263238),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250.0,
                width: 450.0,
                child: Image.asset(
                  "assets/libreria.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                  height: 250.0,
                  width: 450.0,
                  child: Image.network(
                    "https://odisaequipa.com.mx/wp-content/uploads/2021/03/cafeteria-tray-with-homemade-scones-and-croissants-6W85B5X-1-scaled.jpg",
                    fit: BoxFit.fitWidth,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
