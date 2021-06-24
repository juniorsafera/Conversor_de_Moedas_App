import 'package:conversor_de_moedas_app/components/BoxMoeda.dart';
import 'package:conversor_de_moedas_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
 

class ViewHome extends StatefulWidget {
  const ViewHome({ Key? key }) : super(key: key);

  @override
  _ViewHomeState createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
   
       
   final TextEditingController toText = TextEditingController();
   final TextEditingController fromText = TextEditingController();

   late HomeController homeController;

    

    
/*
 @override
  void initState() {
    super.initState();
   homeController = HomeController(toText: toText, fromText: fromText);
  }
 
*/

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text("Conversor de Moedas"),
      ),
      body:   SingleChildScrollView(
              child: Container(
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

                    SizedBox(height: 60,),
                     
                    BoxMoeda(
                      //itemSelecionado: homeController.toMoeda,
                       controller: toText,
                       onChanged: (model){
                          homeController.toMoeda = model;
                       },
                       //items: homeController.moedas,
                        
                    ),
                    SizedBox(height: 20,),                   
                    BoxMoeda(
                      controller: fromText,
                       onChanged: (model){
                          homeController.toMoeda = model;
                       }
                    ),
                     
                        
        
                  // Widget de espaçamentos
                   SizedBox(
                     height: 50,
                   ),

  
                     
                      RaisedButton(
                        color: Colors.amber,
                        
                        onPressed: (){
                          
                        },
                        child: Text("CONVERTER"),                     ),
                     
                    
 
                ],
              ),
            ),
          ),
      ),
      
    );
  }
}
