import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int quantidade = 0;

  void decrementar() {
    if(quantidade > 0){
        setState(() {
          quantidade--;
      });
    }
  }

  void incrementar() {
      setState(() {
        quantidade++;
      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (quantidade < 10)
            ? const Text(
              'Pode entrar!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            : const Text(
              'Lotado!',
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            (quantidade < 10)
            ? Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 30),
              child: Text(
                quantidade.toString(),
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            )
            : Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 30),
              child: Text(
                quantidade.toString(),
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.red,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), 
                  ),
                  onPressed: decrementar,
                ),
                ElevatedButton(
                  child: const Text(
                    'Entrou',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), 
                  ),
                  onPressed: incrementar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
