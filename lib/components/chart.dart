import 'package:vowcher_app_project/models/coupon.dart';
import 'package:flutter/material.dart';
import '../models/coupon.dart';

class Chart extends StatelessWidget {
  final List<Cupom> recentCupom;

  Chart(this.recentCupom);

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
