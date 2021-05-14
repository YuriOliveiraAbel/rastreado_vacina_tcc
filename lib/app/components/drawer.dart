import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerCustom extends StatefulWidget {
  @override
  _DrawerCustomState createState() => _DrawerCustomState();
}

class _DrawerCustomState extends State<DrawerCustom> {
  Widget option(IconData icon, String text, String rota) {
    return GestureDetector(
      onTap: () {
        Modular.navigator.pushNamed('/$rota');
      },
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        child: Row(
          children: [
            FaIcon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                color: Colors.grey[100],
                height: 175,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'M',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Maria Cleunisse',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text('Agente Adm de Saúde',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              option(
                FontAwesomeIcons.box,
                'Remessas enviadas',
                'shipping_list',
              ),
              SizedBox(height: 12),
              option(
                FontAwesomeIcons.boxOpen,
                'Remessas recebidas',
                'shipping_list',
              ),
              SizedBox(height: 12),
              option(
                Icons.add,
                'Nova remessa',
                'new_shipping',
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 40,
                      color: Colors.red,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'Sair',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
