# Menu App 🍽️

## Instructions

1. Create a new project named: `menu_app`.
2. Set up you project with a `Scaffold` and an `AppBar`.
3. Download those [images]() and add them to your project folder and include them in your `pubspec.yaml` file.
4. Create a new file in your `lib` directory called `food.dart`.
5. Create a `class` for the menu items, add a `name` and `imgPath` properties and generate a constructor.
6. Import your new file in the `main.dart` file.
7. Create a `List` for the menu items and create multiple instances of the `Food` class with those values:

```
    'Pasta','images/pasta.jpg'
    'Burger','images/burger.jpg'
    'Suchi','images/suchi.jpg'
    'Pizza','images/pizza.jpg'
    'Biryani','images/biryani.jpg'
```

8. In your `Scaffold`'s `body` create a `ListView.builder` widget.
9. Add an `itemCount` property.
10. Add an `itemBuilder` property that returns a `Card` widget and style your card.

### 🍋 Grid Builder

Try to replace the `ListView.builder` to `GridView.builder` widget.

💡Hint: ![docs](https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html)
