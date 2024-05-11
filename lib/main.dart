import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Veterinaria 0509',
      home: const MyHomePage(),
      theme: ThemeData(colorSchemeSeed: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedAnimal = "Ninguno";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Veterinaria Monge 0509",
            style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Animal Seleccionado: $selectedAnimal",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Perros",
                groupValue: selectedAnimal,
                onChanged: (selectedValue) {
                  setState(() => selectedAnimal = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff14be55)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/dog.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Perros",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Gatos",
                groupValue: selectedAnimal,
                onChanged: (selectedValue) {
                  setState(() => selectedAnimal = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff159a6d)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/cat.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Gatos",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: RadioMenuButton(
                value: "Aves",
                groupValue: selectedAnimal,
                onChanged: (selectedValue) {
                  setState(() => selectedAnimal = selectedValue!);
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: const MaterialStatePropertyAll(2),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xff1b6997)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 50,
                      child: Image.asset("assets/images/bird.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Aves",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
