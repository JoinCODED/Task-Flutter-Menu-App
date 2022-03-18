1. Create a new project named: `menu_app`.
2. Set up you project with a `Scaffold` and an `AppBar`.

```dart
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.red.shade400,
      ),
    )
  }
}
```

3. Download those [images](https://github.com/JoinCODED/Task-Flutter-Menu-App/tree/main/assets/images) and add them to your project folder and include them in your `pubspec.yaml` file.

```yaml
assets:
  - assets/
```

4. Create a new file in your `lib` directory called `food.dart`.
5. Create a `class` for the menu items, add a `name` and `imgPath` properties and generate a constructor.

```dart
class Food {
  String name;
  String imgPath;

  Food({
    required this.name,
    required this.imgPath,
  });
}
```

6. Import your new file in the `main.dart` file.

```dart
import 'package:menu_app/food.dart';
```

7. Create a `List` for the menu items and create multiple instances of the `Food` class with those values:

```
    'Pasta','images/pasta.jpg'
    'Burger','images/burger.jpg'
    'Suchi','images/suchi.jpg'
    'Pizza','images/pizza.jpg'
    'Biryani','images/biryani.jpg'
```

```dart
  List foods = [
    Food(name: "Pasta", imgPath: "images/pasta.jpg"),
    Food(name: "Burger", imgPath: "images/burger.jpg"),
    Food(name: "Suchi", imgPath: "images/suchi.jpg"),
    Food(name: "Pizza", imgPath: "images/pizza.jpg"),
    Food(name: "Biryani", imgPath: "images/biryani.jpg"),
  ];
```

8. In your `Scaffold`'s `body` create a `ListView.builder` widget.

```dart
      body: ListView.builder(),
```

9.  Add an `itemCount` property.

```dart
      body: ListView.builder(
        itemCount: foods.length,
      ),
```

10. Add an `itemBuilder` property that returns a `Card` widget.

```dart
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(),
        },
      ),
```

11. In your `Card` widget add a `Row` with 2 children: a `Text` widget and a `Image.Asset` widget.

```dart
 Card(
            child: Row(
              children: [
                     Text(
                      "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                Image.asset(
                    "",
                    width: 125,
                    height: 125,
                ),
              ],
            ),
          );
```

12. Wrap your `Text` and `Image.Asset` widgets with a `Padding` widget.

```dart
 Card(
            child: Row(
              children: [
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "",
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
```

13. Wrap your `Text` widget with `Expanded` widget so it takes up the free space.

```dart
 Card(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "",
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
```

14. Render the `name` and `imgPath` using the `index` in your widgets.

```dart
 Card(
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
                  child: Image.asset(
                    foods[index].imgPath,
                    width: 125,
                    height: 125,
                  ),
                ),
              ],
            ),
          );
```

### 🍋 Grid Builder

Replace the `Row` in the `Card` with a `Column`.

```dart
Card(
            child: Column(
[...]
```

Replace the `List.View` to `Grid.View`.

```dart
      body: GridView.builder(
```

Add a `gridDelegate` property:

```dart
GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
[...]
```
