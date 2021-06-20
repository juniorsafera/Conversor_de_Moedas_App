import 'package:flutter/material.dart';

class BoxMoeda extends StatelessWidget {
  const BoxMoeda({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _valores = ['Real', 'Dolar', 'Euro', 'Bitcoin'];
    



      
     
        return Row(
    
              
                    children: [

                       Expanded(
                         flex: 1,
                         child: 
                         
                        SizedBox(
                          height: 64,
                          
                          child: 
                          
                          DropdownButton <String>(
                            
                           underline: Container(height: 1, color: Colors.amber,),
                            items : _valores.map((String dropDownStringItem) {

                    return DropdownMenuItem<String>(
                        value : dropDownStringItem,
                        child : Text(dropDownStringItem),
                  ); 
                }).toList(),

         onChanged: (   value) {
               
               

                            },

                            
                                    //    value: valor,
                                           
               
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