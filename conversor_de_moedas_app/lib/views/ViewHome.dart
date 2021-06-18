 

import 'package:conversor_de_moedas_app/utils/DropDown.dart';
import 'package:flutter/material.dart';
 

class ViewHome extends StatefulWidget {
  const ViewHome({ Key? key }) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {



  String valorDB = "";
  List listaItens = [
    "Real" , "Dolar", "Bitcoin"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child: 
          Padding(
            padding: const EdgeInsets.only(top: 120  , left: 20 , right: 20, bottom: 20),
            child: Column(
               
              children: [
                 Container(
                   width: 225,
                   child:
                    Image.network("https://image.flaticon.com/icons/png/512/356/356806.png"),
                 ),

                  Row(
                    children: [

                       Expanded(
                         flex: 1,
                         child: 
                         //Text("Teste"),
                        // DropDown(),
                        DropdownButton(
                          items: [
                        DropdownMenuItem(child: Text("Real"),),
                        

                          ]

                        ),
                       ),

                       Container(
                         width: 50,
                       ),


                      Expanded(
                        flex: 2,
                          child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder() ,
                            labelText: "Valor" ,
                          ),
                        ),
                      ),

                    ],
                  ),
      
                // Widget de espaçamentos
                 SizedBox(
                   height: 50,
                 ),


                  RaisedButton(
                    onPressed: (){},
                    child: Text("CONVERTER"),
                  ),

              ],
            ),
          ),
        ),
      
    );
  }
}
