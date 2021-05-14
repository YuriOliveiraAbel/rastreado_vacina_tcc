import 'package:flutter/material.dart';
import 'package:rastreador_vacina_tcc/app/components/drawer.dart';

class NewShipping extends StatefulWidget {
  @override
  _NewShippingState createState() => _NewShippingState();
}

class _NewShippingState extends State<NewShipping> {
  Widget _buildInput({
    TextInputType type,
    String hintText,
    String labelText,
    TextEditingController controller,
  }) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey[200],
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.center,
        child: Theme(
          data: new ThemeData(
            primaryColor: Colors.blue,
            hintColor: Colors.black,
          ),
          child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return "Preencha o campo " + hintText;
              }
              return null;
            },
            controller: controller,
            keyboardType: type,
            style: TextStyle(fontSize: 22),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 35,
                  color: Colors.red,
                ),
                onPressed: () {
                  controller.clear();
                },
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              labelText: labelText,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Remessa'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildInput(
                hintText: 'Lote nº',
                type: TextInputType.number,
                labelText: 'Informe o Lote',
              ),
              SizedBox(height: 12),
              _buildInput(
                hintText: 'Quantidade de doses',
                type: TextInputType.number,
                labelText: 'Informe as Doses',
              ),
              SizedBox(height: 12),
              _buildInput(
                hintText: 'Operador que vai receber',
                type: TextInputType.number,
                labelText: 'Informe o Operador',
              ),
              SizedBox(height: 12),
              _buildInput(
                hintText: 'Destino da remessa',
                type: TextInputType.number,
                labelText: 'Informe o Destino',
              ),
              SizedBox(height: 12),
              InkWell(
                onTap: () {
                  //calculo vai aqui
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Salvar/Enviar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
