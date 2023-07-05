import 'package:flutter/material.dart';
import 'package:hospital_app/pages/singup.dart';
import 'package:hospital_app/pages/login.dart';
import 'package:hospital_app/widgets/navbar_routes.dart';

class BoasVindas extends StatefulWidget {
  const BoasVindas({super.key});

  @override
  State<BoasVindas> createState() => _BoasVindasState();
}

class _BoasVindasState extends State<BoasVindas> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const NavbarRotas(),
                    ));
                }, 
                child: const Text(
                  'Fechar',
                  style: TextStyle(
                    color: Color(0xFF68A797),
                    fontSize: 20,
                  ),
                )),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/img/logo_medicos.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Consulta Médica',
              style: TextStyle(
                color: Color(0xFF68A797),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Faça seu Agendamento',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 20,),
                Material(
                  color: const Color(0xFF68A797),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Login(),
                        ),
                        );
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.white,
                  shadowColor: const Color(0xFF68A797),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Cadastro(),
                        ),
                        );
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Color(0xFF68A797),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
