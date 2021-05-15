import 'package:flutter/material.dart';

const _formTitle = 'Cadastrando produto';
const _appBarTitle = 'Cadastrar-se';
String _warningText = 'Por favor, insira as informações solicitadas!';

class VowcherRegister extends StatefulWidget {
  // this is a study test
  @override
  _VowcherRegisterState createState() => _VowcherRegisterState();
}

final _vowcherForm = GlobalKey<FormState>();

class _VowcherRegisterState extends State<VowcherRegister> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xffff5d53),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffff5d53),
          title: Text(
            _appBarTitle,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ))),
      body: Form(
        key: _vowcherForm,
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0))),
                    focusColor: Color(0xffff5d53),
                    hintText: 'Nome',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return _warningText;
                    }
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0))),
                    focusColor: Color(0xffff5d53),
                    hintText: 'Sobrenome',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return _warningText;
                    }
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  decoration: InputDecoration(
                    focusColor: Color(0xffff5d53),
                    hintText: 'Email',
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0))),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return _warningText;
                    }
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0))),
                    focusColor: Color(0xffff5d53),
                    hintText: 'Senha',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return _warningText;
                    }
                  }),
              SizedBox(
                width: 500.0,
                height: 100.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_vowcherForm.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: Text('cadastrar-se'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
