import 'package:flutter/material.dart';
import 'package:teamfabricas/Models/Fabrica.dart';
import 'package:teamfabricas/Widgets/Fabrica/Create/ActionForm.dart';
import 'package:teamfabricas/Widgets/Fabrica/Create/FabricaTextField.dart';

class FormFabrica extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controllername = TextEditingController();
  TextEditingController _controllermarket = TextEditingController();
  TextEditingController _controllerceo = TextEditingController();
  TextEditingController _controllercity = TextEditingController();
  TextEditingController _controllercountry = TextEditingController();
  TextEditingController _controllertelephone = TextEditingController();
  TextEditingController _controllerweb = TextEditingController();
  TextEditingController _controllerheadcount = TextEditingController();
  TextEditingController _controllerphotourl = TextEditingController();

  @override
  void dispose() {
    _controllername.dispose();
    _controllermarket.dispose();
    _controllerceo.dispose();
    _controllercity.dispose();
    _controllercountry.dispose();
    _controllertelephone.dispose();
    _controllerweb.dispose();
    _controllerheadcount.dispose();
    _controllerphotourl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          FabricaTextField(
              controllername: _controllername, hint: "Nombre de la empresa"),
          FabricaTextField(controllername: _controllermarket, hint: "Sector"),
          FabricaTextField(controllername: _controllerceo, hint: "Presidente"),
          FabricaTextField(controllername: _controllercity, hint: "Ciudad"),
          FabricaTextField(controllername: _controllercountry, hint: "País"),
          FabricaTextField(controllername: _controllerweb, hint: "Web"),
          FabricaTextField(
              controllername: _controllertelephone, hint: "Teléfono"),
          FabricaTextField(
              controllername: _controllerheadcount, hint: "Número Empleados"),
          FabricaTextField(
              controllername: _controllerphotourl, hint: "Logo URL"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: new Text("Cancelar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text("Crear"),
                onPressed: () {
                  if (_formKey.currentState!.validate() != false) {
                    var fabrica = new Fabrica();
                    fabrica.name = _controllername.text;
                    fabrica.market = _controllermarket.text;
                    fabrica.ceo = _controllerceo.text;
                    fabrica.city = _controllercity.text;
                    fabrica.country = _controllercountry.text;
                    fabrica.web = _controllerweb.text;
                    fabrica.telephone = _controllertelephone.text;
                    fabrica.headcount = _controllerheadcount.text;
                    fabrica.photoURL =_controllerphotourl.text;

                    Fabrica.save(fabrica);
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
