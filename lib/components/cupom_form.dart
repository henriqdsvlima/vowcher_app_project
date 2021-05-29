import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CupomForm extends StatefulWidget {
  // final void Function(String, DateTime) onSubmit;
  final void Function(String, double, DateTime) onSubmit;

  CupomForm(this.onSubmit);

  @override
  _CupomFormState createState() => _CupomFormState();
}

class _CupomFormState extends State<CupomForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  _submitForm() {
    final title = _titleController.text;
    final value = double.tryParse(_valueController.text) ?? 0.0;

    // if (title.isEmpty || _selectedDate == null) {
    if (title.isEmpty || value <= 0 || _selectedDate == null) {
      return;
    }

    // widget.onSubmit(title, _selectedDate);
    widget.onSubmit(title, value, _selectedDate);
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  labelText: 'Loja',
                ),
              ),
              TextField(
                controller: _valueController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  labelText: 'Codigo',
                ),
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _selectedDate == null
                            ? 'Nenhuma Data Selecionada!'
                            : 'Data Selecionada: ${DateFormat('dd/MM/y/EEEE').format(_selectedDate)}',
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Selecionar Data',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: _showDatePicker,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    child: Text('Nova Transação'),
                    onPressed: () => _submitForm(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
