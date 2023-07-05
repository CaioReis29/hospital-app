import 'package:flutter/material.dart';
import 'package:hospital_app/pages/view_doctor.dart';

class HomePage extends StatelessWidget {

  final List<String> sintomas = [
    "Febre",
    "Congestão nasal",
    "Tosse",
    "Resfriado",
    "Dor de cabeça"
  ];

  final List<String> imagens = [
    "medico1.jpg",
    "medico2.jpg",
    "medico3.jpg",
    "medico4.jpg",
  ];

  final List<String> nomeMedicos = [
    "Dra. Rose Quartz",
    "Dr. Lucas Augusto",
    "Dra. Mariana Silva",
    "Dr. Jorge Sampaio",
  ];

  final List<String> tipoMedico = [
    "Cardiologista",
    "Urologista",
    "Clínica Geral",
    "Demartologista",
  ];

  final List<String> classificacaoMedico = [
    "5.0",
    "4.9",
    "4.8",
    "4.7",
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:  const EdgeInsets.only(top: 40),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Olá, Caio Reis!",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/img/meu_perfil.jpg"),
                  ),
                ],
              ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF68A797),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF68A797),
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Visita Clínica',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Marque uma Consulta',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 224, 250, 242),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          color: Color(0xFF68A797),
                          Icons.home,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Visita Domiciliar',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Marque consulta em casa',
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          const Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            'Quais são os seus sintomas?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          ),
          SizedBox(height: 70,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: sintomas.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                    sintomas[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              );
            }
            ),
          ),
          const SizedBox(height: 15,),
          const Padding(padding: EdgeInsets.only(left: 15),
          child: Text(
            'Médicos Populares',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              ),
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), 
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Agendamento(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/img/${imagens[index]}'),
                      ),
                      Text(
                        nomeMedicos[index],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        ),
                      ),
                      Text(
                        tipoMedico[index],
                        style: const TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            classificacaoMedico[index],
                            style: const TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            ),
        ],
      ),
    );
  }
}
