import 'package:flutter/material.dart';
import 'package:menu_app/food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List foods = [
    Food(name: "Pasta", imgPath: "images/pasta.jpg"),
    Food(name: "Burger", imgPath: "images/burger.jpg"),
    Food(name: "Suchi", imgPath: "images/suchi.jpg"),
    Food(name: "Pizza", imgPath: "images/pizza.jpg"),
    Food(name: "Biryani", imgPath: "images/biryani.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.red.shade400,
      ),
      body: ListView.builder(
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200,
        //     childAspectRatio: 1,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 20),
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      foods[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  // 2
                  child: Image.asset(
                    foods[index].imgPath,
                    // 3
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
