# Menu App 🍽️

![image1](https://user-images.githubusercontent.com/84308096/159009202-d2eb6e65-ee78-4153-bb82-c20787b82a49.png)

## Setup

1. Create a new Github repo
2. Create a local repo using the command `git init`
3. Push to the new repo

```shell
git remote add origin https://github.com/YourUsername/repoName.git
```

```shell
git branch -M main
```

```shell
git push -u origin main
```

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
11. In your `Card` widget add the text and the image.

Here's the widgets you will need:

[Row](https://api.flutter.dev/flutter/widgets/Row/Row-class.html).

[Expanded](https://api.flutter.dev/flutter/widgets/Expanded/Expanded-class.html).

[Text](https://api.flutter.dev/flutter/widgets/Text/Text-class.html).

[Image.Asset](https://api.flutter.dev/flutter/widgets/Image/Image-class.html).

[Padding](https://api.flutter.dev/flutter/widgets/Padding/Padding-class.html).

[Card](https://api.flutter.dev/flutter/widgets/Card/Card-class.html).

[ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView-class.html#builder).

[Column](https://api.flutter.dev/flutter/widgets/Column/Column-class.html).

### Some Fancy UI

Make each Card have a rounded radius

### 🤼‍♂️ Grid Builder

Try to replace the `ListView.builder` to `GridView.builder` widget.

💡Hint: ![docs](https://api.flutter.dev/flutter/widgets/GridView/GridView.builder.html)

## Push to Github

```shell
git add .
```

```shell
git commit -m "your message"
```

```shell
git push
```
