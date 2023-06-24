import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_app/pages/home_page.dart';

class NavbarRotas extends StatefulWidget {
  const NavbarRotas({super.key});

  @override
  State<NavbarRotas> createState() => _NavbarRotasState();
}

class _NavbarRotasState extends State<NavbarRotas> {
  int _cardSelecionado = 0;

  final _paginas = [
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _paginas[_cardSelecionado],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF68A797),
            unselectedItemColor: Colors.black26,
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            currentIndex: _cardSelecionado,
            onTap: (index) {
              setState(() {
                _cardSelecionado = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                  label: 'Mensagens'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Agenda'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Configurações'),
            ]),
      ),
    );
  }
}
