import 'package:conversor_de_moedas_app/controllers/home_controller.dart';
import 'package:conversor_de_moedas_app/models/moedas_Model.dart';
import 'package:flutter/material.dart';


class BoxMoeda extends StatefulWidget {
      final List<MoedasModel>? items;
    final TextEditingController? controller;
     final void Function(MoedasModel model)? onChanged;
     final MoedasModel? itemSelecionado ;

     

     

  const BoxMoeda({ Key? key , this.items , this.controller, this.onChanged, this.itemSelecionado}) : super(key: key);

  @override
  _BoxMoedaState createState() => _BoxMoedaState();
}

class _BoxMoedaState extends State<BoxMoeda> {
  String dropdownValue = 'Real';
  final TextEditingController toText = TextEditingController();
   final TextEditingController fromText = TextEditingController();
    HomeController? homeController;
    
    
   

  get controller => null;

  get onChanged => null;

  
   

   @override
   Widget build(BuildContext context) {
     return     Row(
                crossAxisAlignment: CrossAxisAlignment.start,
              
                    children: [

                       

                       Expanded(
                         flex: 1,
                         child: 

                         SizedBox(
                           height: 56,
                           child: DropdownButton<String>(
                             iconEnabledColor: Colors.amber,
                                value: dropdownValue,  
                                isExpanded: true,                              
                                underline: Container(
                                  height: 1,
                                  color: Colors.amber,
                                ),
                                onChanged: (String? newValue) {
                                  onChanged;
                                   
                                  setState(() {
                                     dropdownValue = newValue!;
                                    //homeController!.toMoeda = newValue as MoedasModel  ;
                                  }); 
                                  print(dropdownValue);
                                },
                                items: <String>['Real', 'Dolar', 'Euro', 'BitCoin']
                                  .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  })
                                  .toList(),
                              ),
                         ),                       
                                       ),
                                       
               
                                      Container(
                                        width: 50,
                                      ),
               
               
                                     Expanded(
                                       flex: 2,
                                         child: TextField(
                                           controller: controller,
                                         decoration: InputDecoration(
                                           //border: OutlineInputBorder() ,
                                           border: UnderlineInputBorder(
                                             borderSide: BorderSide(color: Colors.amber),
                                           ),
                                           focusedBorder: UnderlineInputBorder(
                                             borderSide: BorderSide(color: Colors.amber),
                                           ),
                                           enabledBorder: UnderlineInputBorder(
                                             borderSide: BorderSide(color: Colors.amber),
                                           ),
                                           
                                         ),
                                       ),
                                     ),
               
                                   ],
                                 );
   }
}