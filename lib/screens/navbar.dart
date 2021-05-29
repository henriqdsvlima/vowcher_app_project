import 'package:flutter/material.dart';

import 'cupom_home.dart';
import 'profile.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Color(0xFFA5140C),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Perfil',
                  ),
                  Tab(
                    text: 'Meus Cupons',
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            VowcherProfile(),
            CupomHomePage(),
          ]),
        ));
  }
}
