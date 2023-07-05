import 'package:flutter/material.dart';
import 'package:hospital_app/widgets/structure_chat.dart';

class ChatPrivado extends StatefulWidget {
  const ChatPrivado({super.key});

  @override
  State<ChatPrivado> createState() => _ChatPrivadoState();
}

class _ChatPrivadoState extends State<ChatPrivado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: const Color(0xFF68A797),
          leadingWidth: 20,
          title: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage('assets/img/medico1.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 2),
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Dra. Rose Quartz',
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => const EstruturaChat(),
        ),
        bottomSheet: Container(
          height: 65,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 2,
              )
            ],
          ),
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
              ),
              Padding(padding: const EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
                color: Colors.yellow.shade500,
              ),
              ),
              Padding(padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Digite uma Mensagem',
                    border: InputBorder.none,
                  ),
                ),
              ),
              ),
              const Spacer(),
              const Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF68A797),
              ),
              )
            ],
          ),
        ),
    );
  }
}
