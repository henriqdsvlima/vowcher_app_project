import 'package:vowcher_app_project/models/cupom.dart';
import 'package:flutter/material.dart';
import '../models/cupom.dart';

class Chart extends StatelessWidget {
  final List<Cupom> recentCupom;

  Chart(this.recentCupom);

  // List<Map<String, Object>> get groupedCupons {
  //   return List.generate(7, (index) {
  //     final weekDay = DateTime.now().subtract(
  //       Duration(days: index),
  //     );

  //     double totalSum = 0.0;

  //     for (var i = 0; i < recentCupom.length; i++) {
  //       bool sameDay = recentCupom[i].date.day == weekDay.day;
  //       bool sameMonth = recentCupom[i].date.month == weekDay.month;
  //       bool sameYear = recentCupom[i].date.year == weekDay.year;

  //       if (sameDay && sameMonth && sameYear) {
  //         totalSum += recentCupom[i].value;
  //       }
  //     }

  //     return {
  //       'day': DateFormat.E().format(weekDay)[0],
  //       'value': totalSum,
  //     };
  //   }).reversed.toList();
  // }

  // double get _weekTotalValue {
  //   return groupedCupons.fold(0.0, (sum, tr) {
  //     return sum + tr['value'];
  //   });
  // }

  String _nomeUsuario = 'Henrique Lima';

  @override
  Widget build(BuildContext context) {
    return Container(
      // elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.red.shade100,
              backgroundImage: AssetImage('assets/images/user.png'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12.0,
                  child: Icon(
                    Icons.camera_alt,
                    size: 15.0,
                    color: Color(0xFF404040),
                  ),
                ),
              ),
            ),
            Text(
              'Ola $_nomeUsuario,\nBem Vindo',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
    // return Card(
    //   elevation: 6,
    //   margin: EdgeInsets.all(20),
    //   child: Padding(
    //     padding: const EdgeInsets.all(10),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: groupedCupons.map((tr) {
    //         return Flexible(
    //           fit: FlexFit.tight,
    //           child: ChartBar(
    //             label: tr['day'],
    //             value: tr['value'],
    //             percentage: _weekTotalValue == 0
    //                 ? 0
    //                 : (tr['value'] as double) / _weekTotalValue,
    //           ),
    //         );
    //       }).toList(),
    //     ),
    //   ),
    // );
  }
}
