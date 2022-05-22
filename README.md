# Menu App 🍽️

![image1](https://user-images.githubusercontent.com/84308096/159009202-d2eb6e65-ee78-4153-bb82-c20787b82a49.png)

## 🍋 Instructions

1. Create a new project named: `menu_app`.
2. Set up you project with a `Scaffold` and an `AppBar`.
3. Download those [images](https://github.com/JoinCODED/Task-Flutter-Menu-App/tree/main/assets/images) and add them to your project folder and include them in your `pubspec.yaml` file.
4. Create a new folder in your `lib` directory called `models`.
5. Create a file called `food.dart` inside models folder
6. Create a `class` for the menu items, add a `name` and `imgPath` properties and generate a constructor.
7. Import your new file in the `main.dart` file.
8. Create a `List` for the menu items and create multiple instances of the `Food` class with those values:

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
11. In your `Card` widget add a `Row` with 2 children: a `Text` widget and a `Image.Asset` widget.
12. Wrap your `Text` and `Image.Asset` widgets with a `Padding` widget.
13. Wrap your `Text` widget with `Expanded` widget so it takes up the free space.
14. Render the `name` and `imgPath` using the `index` in your widgets.

### 🤼‍♂️ Grid Builder

Try to replace the `ListView.builder` to `GridView.builder` widget.

💡Hint: ![docs](https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html)
