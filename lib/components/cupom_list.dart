import 'package:vowcher_app_project/models/coupon.dart';
import 'package:flutter/material.dart';
import '../models/coupon.dart';
import 'package:intl/intl.dart';

class CupomList extends StatelessWidget {
  final List<Cupom> cupons;
  final void Function(String) onRemove;

  CupomList(this.cupons, this.onRemove);

  @override
  Widget build(BuildContext context) {
    // Set Default Language to Portuguese from Brazil
    Intl.defaultLocale = 'pt_BR';
    return Container(
      height: MediaQuery.of(context).size.height * 0.82,
      child: cupons.isEmpty
          ? Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Nenhum Cupom Encontrado',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: cupons.length,
              itemBuilder: (ctx, index) {
                final tr = cupons[index];
                return ListTile(
                  leading: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: 35,
                        child: Image.asset(
                          'assets/images/cupom.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    tr.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    DateFormat('d MMM y EEEE').format(tr.date),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    color: Theme.of(context).errorColor,
                    onPressed: () => onRemove(tr.id),
                  ),
                );
              },
            ),
    );
  }
}
