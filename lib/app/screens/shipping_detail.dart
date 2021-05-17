import 'package:flutter/material.dart';
import 'package:rastreador_vacina_tcc/app/models/shipping_model.dart';
import 'package:steps/steps.dart';

class ShippingDetail extends StatefulWidget {
  final ShippingModel shipping;
  ShippingDetail({this.shipping});
  @override
  _ShippingDetailState createState() => _ShippingDetailState();
}

class _ShippingDetailState extends State<ShippingDetail> {
  @override
  void initState() {
    super.initState();
  }

  Widget info(String descricao, String value) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            descricao,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remessa nº ' + widget.shipping.numero.toString()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              info('Descrição:', widget.shipping.descricao),
              info('Qtd de doses enviadas:',
                  widget.shipping.qtdDoses.toString()),
              info('Qtd de doses Recebidas:',
                  widget.shipping.qtdDosesReceb.toString()),
              info('Data de saída: ', widget.shipping.dataSaida),
              info('Data de chegada: ', widget.shipping.dataChegada),
              info('Responsavel pelo envio: ', widget.shipping.respEnvio),
              info('Responsavel pelo recebimento: ', widget.shipping.respReceb),
              info('Local de saída: ', widget.shipping.localSaida),
              info('Local de chegada: ', widget.shipping.localChegada),
              SizedBox(height: 12),
              Text(
                'Trageto',
                style: TextStyle(fontSize: 22),
              ),
              Expanded(
                child: Steps(
                  direction: Axis.vertical,
                  size: 20.0,
                  path: {'color': Colors.lightBlue.shade200, 'width': 3.0},
                  steps: [
                    {
                      'color': Colors.white,
                      'background': Colors.blue,
                      'label': '1',
                      'content': Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.shipping.localSaida,
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text(
                            widget.shipping.dataSaida,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    },
                    {
                      'color': Colors.white,
                      'background': Colors.blue,
                      'label': '2',
                      'content': Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.shipping.localChegada,
                            style: TextStyle(fontSize: 22.0),
                          ),
                          Text(
                            widget.shipping.dataChegada,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    },
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        //calculo vai aqui
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.blue,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //calculo vai aqui
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.blue,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.print,
                                color: Colors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Imprimir',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
