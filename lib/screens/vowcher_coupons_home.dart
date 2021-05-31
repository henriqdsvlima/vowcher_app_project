import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:vowcher_app_project/components/chart.dart';
import 'package:vowcher_app_project/components/cupom_form.dart';
import 'package:vowcher_app_project/components/cupom_list.dart';
import 'package:vowcher_app_project/models/coupon.dart';

// class CupomHome extends StatelessWidget {
//   const CupomHome({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.white,
//         accentColor: Colors.amber,
//         fontFamily: 'Quicksand',
//         textTheme: ThemeData.light().textTheme.copyWith(
//               headline6: TextStyle(
//                 fontFamily: 'OpenSans',
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//               button: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//         appBarTheme: AppBarTheme(
//           textTheme: ThemeData.light().textTheme.copyWith(
//                 headline6: TextStyle(
//                   fontFamily: 'OpenSans',
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(primary: Colors.purple),
//         ),
//       ),
//     );
//   }
// }

class CupomHomePage extends StatefulWidget {
  CupomHomePage({Key key}) : super(key: key);

  @override
  _CupomHomePageState createState() => _CupomHomePageState();
}

class _CupomHomePageState extends State<CupomHomePage> {
  final List<Cupom> _cupons = [];

  List<Cupom> get _recentCupons {
    return _cupons.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7),
      ));
    }).toList();
  }

  _addCupom(String title, double value, DateTime date) {
    final newCupom = Cupom(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );
    setState(() {
      _cupons.add(newCupom);
    });

    TapGestureRecognizer(debugOwner: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
    ));
  }

  _deleteCupom(String id) {
    setState(() {
      _cupons.removeWhere((tr) => tr.id == id);
    });
  }

  _openCupomFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return CupomForm(_addCupom);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR', null);
    print(MaterialLocalizations.of(context));
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Chart(_recentCupons),
            CupomList(_cupons, _deleteCupom),
          ],
        ),
      ),
      floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.red[500],
                onPressed: () => _openCupomFormModal(context),
              )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
