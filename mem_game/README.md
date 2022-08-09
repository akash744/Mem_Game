# mem_game

A Flutter project.

## Resources 

### Download the Font Files

Grab the font files from https://drive.google.com/file/d/1BVvL149gPGjIWf3pv961Fk6xb46to7FI/view?usp=sharing 

##### Code for pubspec.yaml
```yaml
  fonts:
    - family: Pacifico
      fonts:
        - asset: fonts/Pacifico-Regular.ttf
```




### Download the assets files

Grab the asset files from https://drive.google.com/file/d/1A8aFJsWLo_SidCiF1_2n1ZQ1ecvQLNgw/view?usp=sharing 


##### Code for pubspec.yaml
```yaml
  assets:
    - assets/images/
```

##### Code for custom Card

```dart
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
```


##### Code for Game Class

```dart

    String questionCardPath = "assets/images/hidden.png";

    List<String> cardPaths = [
    "assets/images/beer.png",
    "assets/images/beer.png",
    "assets/images/burger.png",
    "assets/images/burger.png",
    "assets/images/cupcake.png",
    "assets/images/cupcake.png",
    "assets/images/donut.png",
    "assets/images/donut.png",
    "assets/images/fries.png",
    "assets/images/fries.png",
    "assets/images/icecream.png",
    "assets/images/icecream.png",
    "assets/images/pizza.png",
    "assets/images/pizza.png",
    "assets/images/popcorn.png",
    "assets/images/popcorn.png",
  ];

```

##### Background Colour for Scaffold

```dart
const Color(0xFF3A405A),
```

##### Background Colour for Tile Cards

```dart
const Color(0xFF99B2DD),
```


