import 'package:flutter/material.dart';
import 'package:rastreador_vacina_tcc/app/components/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget infos(IconData icon, String count, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 35),
            Text(
              count,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCustom(),
      appBar: AppBar(
        title: Text('Rastredor vacinas'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    infos(
                      Icons.flight_takeoff,
                      '230',
                      'Remessas Enviadas',
                    ),
                    infos(
                      Icons.flight_land,
                      '51',
                      'Remessas Recebidas',
                    ),
                    infos(
                      Icons.flight_takeoff,
                      '230',
                      'Remessas recebidas',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '2 Remessas em atraso',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Chegou nova remessa',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
