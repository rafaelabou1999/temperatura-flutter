import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController celsius = TextEditingController();
  TextEditingController fa = TextEditingController();



  void converter() {
    setState(() {
      double c, f;
      c = double.parse(celsius.text);
      f = (c * 9 / 5) + 32;

      fa.text = f.toStringAsFixed(1);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(50, 80, 10, 20),
                   child: Image.network("https://cdn2.iconfinder.com/data/icons/weather-365/64/weather-sun-cloud-rain-512.png",
                    width:90,
                    height:90,
                    fit: BoxFit.cover),
                ),
        
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 80, 10, 20),
                    child: Text("Conversor de \n Temperatura",
                    style: TextStyle(color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
                  )
        
              ],
        
        
            ),
            SizedBox(
              height:90,
              width:310,
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: TextField(
                  controller: celsius,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Insira uma temperatura em Celsius",
                      filled: true,
                      fillColor: Colors.grey,

                  ),

                ),

              ),
            ),

            SizedBox(
              height:90,
              width:310,

              child: Padding(

                padding: const EdgeInsets.all(9),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                  enabled: false,
                  controller: fa,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Temperatura em Fahrenheit",
                    labelStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.deepPurple,


                  ),

                ),

              ),
            ),
        
        
        ElevatedButton(
            onPressed: (){
              converter();
            },
            child: Text("Converter"))
        
          ],
        ),
      )
    );
  }
}

