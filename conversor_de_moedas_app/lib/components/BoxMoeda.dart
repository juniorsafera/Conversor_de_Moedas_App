import 'package:flutter/material.dart';


class BoxMoeda extends StatefulWidget {
  const BoxMoeda({ Key? key }) : super(key: key);

  @override
  _BoxMoedaState createState() => _BoxMoedaState();
}

class _BoxMoedaState extends State<BoxMoeda> {
  String dropdownValue = 'Real';
   

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
                                value: dropdownValue,  
                                isExpanded: true,                              
                                underline: Container(
                                  height: 1,
                                  color: Colors.amber,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
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