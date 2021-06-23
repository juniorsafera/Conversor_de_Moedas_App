

import 'package:conversor_de_moedas_app/models/moedas_Model.dart';
import 'package:flutter/cupertino.dart';

class HomeController{

List<MoedasModel>? moedas;
  TextEditingController? toText ;
 TextEditingController? fromText ;

MoedasModel? toMoeda;
MoedasModel? fromMoeda;


HomeController({this.toText ,this.fromText}) {
  moedas = MoedasModel.getMoedas();
  toMoeda = moedas![0];
  fromMoeda = moedas![1];
}


void convert(){
  String text = toText!.text;
  double value = double.tryParse(text) ?? 1.0;
  double returnValue = 0;

  if(fromMoeda!.nome == 'Real'){
    returnValue = value * toMoeda!.real;
  } else if(fromMoeda!.nome == 'Dolar'){
    returnValue = value * toMoeda!.dolar;
  } else if(fromMoeda!.nome == 'Euro'){
    returnValue = value * toMoeda!.euro;
  } else if(fromMoeda!.nome == 'Bitcoin'){
    returnValue = value * toMoeda!.bitcoin;
  }

  fromText!.text = returnValue.toStringAsFixed(2);
}
}