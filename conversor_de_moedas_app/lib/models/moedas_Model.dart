

class MoedasModel{

      final String? nome;
      final double real;
      final double dolar;
      final double euro;
      final double bitcoin;

  MoedasModel(
    {  this.nome ,
    required this.real , 
    required this.dolar , 
    required this.euro , 
    required this.bitcoin});

  static List<MoedasModel> getMoedas(){
    return <MoedasModel>[
        MoedasModel(
          nome: 'Real' , real: 1.0 , dolar: 0.18 , euro: 0.15 , bitcoin: 0.000016
        ),
        MoedasModel(
          nome: 'Dolar' , real: 5.65 , dolar: 1.0 , euro: 0.85 , bitcoin: 0.000088
        ),
        MoedasModel(
          nome: 'Euro' , real: 6.62 , dolar: 1.17 , euro: 1.0 , bitcoin: 0.000010
        ),
        MoedasModel(
          nome: 'Bitcoin' , real: 64116.51 , dolar: 11351.30 , euro: 9689.54 , bitcoin: 1
        ),
    ];
  }
}