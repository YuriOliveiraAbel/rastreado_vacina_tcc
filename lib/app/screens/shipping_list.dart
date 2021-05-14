import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rastreador_vacina_tcc/app/models/shipping_model.dart';

class ShippingList extends StatefulWidget {
  final List<ShippingModel> shippings;
  ShippingList({@required this.shippings});
  @override
  _ShippingListState createState() => _ShippingListState();
}

class _ShippingListState extends State<ShippingList> {
  List<ShippingModel> shippingsAux;
  @override
  void initState() {
    shippingsAux = [
      ShippingModel(
        dataChegada: '02/04/2021',
        dataSaida: '25/03/2021',
        localChegada: 'Criciuma-SC',
        localSaida: 'Florienopolis',
        numero: 02042021226,
        qtdDoses: 250000,
        qtdDosesReceb: 235000,
        recebida: true,
        respEnvio: 'Yuri Abel',
        respReceb: 'Paulo Martins',
      ),
      ShippingModel(
        dataChegada: '02/04/2021',
        dataSaida: '25/03/2021',
        localChegada: 'Criciuma-SC',
        localSaida: 'Florienopolis',
        numero: 02042021226,
        qtdDoses: 250000,
        qtdDosesReceb: 235000,
        recebida: true,
        respEnvio: 'Yuri Abel',
        respReceb: 'Paulo Martins',
      ),
      ShippingModel(
        dataChegada: '02/04/2021',
        dataSaida: '25/03/2021',
        localChegada: 'Criciuma-SC',
        localSaida: 'Florienopolis',
        numero: 02042021226,
        qtdDoses: 250000,
        qtdDosesReceb: 235000,
        recebida: true,
        respEnvio: 'Yuri Abel',
        respReceb: 'Paulo Martins',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remessas enviadas'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: shippingsAux.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.syringe,
                    size: 35,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        shippingsAux[index].numero.toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "De ${shippingsAux[index].localSaida} para ${shippingsAux[index].localChegada}",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Saida: ${shippingsAux[index].dataSaida}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
