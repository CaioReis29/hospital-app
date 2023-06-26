import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class EstruturaChat extends StatelessWidget {

  const EstruturaChat({ super.key });

   @override
   Widget build(BuildContext context) {
       return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Padding(padding: EdgeInsets.only(right: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFE1E1E2),
                ),
                child: Text(
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
              child: Padding(padding: EdgeInsets.only(left: 80, top: 20),
              child: ClipPath(
                clipper: LowerNipMessageClipper(MessageType.send),
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF68A797),
                  ),
                  child: Text(
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