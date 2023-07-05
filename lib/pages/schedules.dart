import 'package:flutter/material.dart';
import 'package:hospital_app/widgets/consult_canceled.dart';
import 'package:hospital_app/widgets/consult_completed.dart';
import 'package:hospital_app/widgets/consult_coming.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  int _botaoIndex = 0;

  final _agendaWidgets = [
    const ConsultasProximas(),
    const ConsultasCompletas(),
    const ConsultasCanceladas(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Agendamentos',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _botaoIndex = 0;
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                      decoration: BoxDecoration(
                        color: _botaoIndex == 0
                            ? const Color(0xFF68A797)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Próximo',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color:
                                _botaoIndex == 0 
                                ? Colors.white 
                                : Colors.black
                                ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _botaoIndex = 1;
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _botaoIndex == 1
                            ? const Color(0xFF68A797)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Completo',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color:
                                _botaoIndex == 1 
                                ? Colors.white 
                                : Colors.black
                                ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _botaoIndex = 2;
                      });
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _botaoIndex == 2
                            ? const Color(0xFF68A797)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Cancelado',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color:
                                _botaoIndex == 2 
                                ? Colors.white 
                                : Colors.black
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _agendaWidgets[_botaoIndex],
          ],
        ),
      ),
    );
  }
}
