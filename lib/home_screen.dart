import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 10;
  TextEditingController counterTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    counterTxt.text = counter.toString();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Practica 2'),
          elevation: 10,
          backgroundColor: const Color.fromARGB(255, 18, 218, 249),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              separador(15),
              titulo(),
             separador(35),
              credits(),
              separador(50.0),
              contador(),
            ],
            
          ),
        ),
        floatingActionButton:  botones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }

  Row botones() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(onPressed: (){
            counter --;
            counterTxt.text = counter.toString();
           // print("Se preciono el boton -");
            //print(counter);
            },
          foregroundColor: Colors.amber,
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(onPressed: (){
            counter =0;
            counterTxt.text = counter.toString();
            //print("Se preciono el boton restart");
           // print(counter);
            },
          foregroundColor: Colors.amber,
          backgroundColor: Colors.green,
          child: const Icon(Icons.restart_alt),
          ),
          FloatingActionButton(onPressed: (){
            counter ++;
            counterTxt.text = counter.toString();
           // print("Se preciono el boton +");
            //print(counter);
            },
          foregroundColor: Colors.amber,
          backgroundColor: Colors.red,
          child: const Icon(Icons.exposure_plus_1),
          ),
        ],
      );
  }

  SizedBox separador( double alto ) {
    return  SizedBox(
              height: alto,
            );
  }

  Row credits() {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Developer: ',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                ) ,),
                Text('Luis Enrique Sanchez',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 30.5,
                ),),
              ],
            );
  }

  Text titulo() {
    return const Text('Contador de taps',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.5,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    );
  }

Widget contador(){
  return  SizedBox(
    width: 150.0,
    child:  TextField(
      controller: counterTxt,
      enabled: false,
      keyboardType: TextInputType.number,
      maxLength: 6,
      //maxLines:3, expande el TextField lineas
      style: const TextStyle(
        fontSize:25.0,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent, 
      ),
      cursorColor: Colors.amber,
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 16.0,
      //obscureText: true, oculta el texto que se escribe
     decoration: const InputDecoration(
      //prefixIcon: Icon(Icons.ac_unit_sharp),
      icon: (Icon(Icons.ac_unit_sharp)),
      iconColor: Colors.cyan,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color :Colors.blueAccent),
        ), 
      ),
    ),
  );
}
}
