import 'package:flutter/material.dart';

void main() => runApp(MiPractica());

class MiPractica extends StatelessWidget {
  const MiPractica({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal de la aplicación
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Uribe Practica"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 30),
          backgroundColor: Color(0xffc8a6ff), // Color de la AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto debajo del AppBar
              const Padding(
                padding:
                    EdgeInsets.only(bottom: 20), // Espacio debajo del AppBar
                child: Text(
                  "Daniel Uribe Martinez Mat:22308051281323",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              // Cuadro con texto
              Container(
                width: 300,
                height: 300,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  "",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              // Botón
              Transform.translate(
                offset: const Offset(0, -20), // Mueve el botón hacia arriba
                child: ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón
                    print("Botón presionado");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0b63ad), // Color del botón
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8), // Redondeo del botón
                    ),
                  ),
                  child: const Text(
                    "And Watch",
                    style: TextStyle(
                        fontSize: 18, color: Colors.white), // Color del texto
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
