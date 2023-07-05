import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class EstruturaChat extends StatelessWidget {

  const EstruturaChat({ super.key });

   @override
   Widget build(BuildContext context) {
       return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Padding(padding: const EdgeInsets.only(right: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFE1E1E2),
                ),
                child: const Text(
                  'Olá, no que posso ajudar? É você quem está precisando agendar uma consulta?',
                  style: TextStyle(
                    fontSize: 16,
                    ),
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Padding(padding: const EdgeInsets.only(left: 80, top: 20),
              child: ClipPath(
                clipper: LowerNipMessageClipper(MessageType.send),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF68A797),
                  ),
                  child: const Text(
                    'Olá, Boa tarde! Sou em sim... Queria saber com você quando vou poder agendar uma consulta. Pode marcar dia 15/07?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              ),
            ),
           ],
       );
  }
}