import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int startingPosition = 0;
  List<String> urlList = [
    'https://c4.wallpaperflare.com/wallpaper/772/105/265/naruto-shippuuden-anime-fox-hatake-kakashi-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/496/609/203/hatake-kakashi-cosplay-men-mist-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/72/876/833/anime-naruto-shippuuden-uzumaki-naruto-uchiha-sasuke-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/470/652/917/anime-naruto-naruto-uzumaki-sasuke-uchiha-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/562/750/513/uzumaki-naruto-uchiha-sasuke-naruto-shippuuden-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/1000/269/216/naruto-shippuuden-masashi-kishimoto-uzumaki-naruto-haruno-sakura-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/672/578/501/manga-naruto-shippuuden-uzumaki-naruto-uchiha-sasuke-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/977/144/31/naruto-shippuuden-umino-iruka-hatake-kakashi-namikaze-minato-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/522/514/343/anime-naruto-deidara-naruto-gaara-naruto-wallpaper-preview.jpg',
    'https://c4.wallpaperflare.com/wallpaper/503/279/714/anime-naruto-deidara-naruto-hidan-naruto-wallpaper-preview.jpg'
  ];

  void _goToNextImage() {
    setState(() {
          startingPosition = (startingPosition + 1) % urlList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anime Wallpaper App'),
          backgroundColor: Colors.red,
        ),
        body: Center(
              child: Image.network(
                urlList[startingPosition],
                fit: BoxFit.fill,
              ),
        ),
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 20.0),
          child: FloatingActionButton(
            onPressed: () {
              _goToNextImage();
            },
            child: const Icon(Icons.arrow_right_alt),
          ),
        ),
      ),
    );
  }
}
