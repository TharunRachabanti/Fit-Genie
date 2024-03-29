import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = ['assets/aa1.png', 'assets/gg1.png', 'assets/aa1.png', 'assets/gg1.png', 'assets/aa1.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.0),
        child: AppBar(
          centerTitle: false,
          title: Column(
            children: <Widget>[
              Transform(
                transform: Matrix4.translationValues(-60.0, 10.0, 0.0),
                child: Text(
                  "CLOTHES SHOPPING",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                    decoration: TextDecoration.none,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: [Colors.teal, Colors.teal],
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Transform(
                transform: Matrix4.translationValues(40.0, 0.0, 0.0),
                child: Text(
                  "Your one-stop shop for fashionable clothes",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Navigate to the shopping cart screen
              },
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for products",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 20 / 15,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: images.map((item) => Container(
                child: Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: 200.0,
                  ),
                ),
              )).toList(),
            ),
            SizedBox(height: 16),
            Text(
              "TOP BRANDS",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: <Widget>[
                  CategoryCard(
                    image: "assets/logo.png",
                    title: "Allen Solly",
                    onTap: () {
                      // Navigate to the men's clothing category
                    },
                  ),
                  CategoryCard(
                    image: "assets/tt1.png",
                    title: "Peter England",
                    onTap: () {
                      // Navigate to the women's clothing category
                    },
                  ),
                  CategoryCard(
                    image: "assets/hyy1.png",
                    title: "Raymond",
                    onTap: () {
                      // Navigate to the kids' clothing category
                    },
                  ),
                  CategoryCard(
                    image: "assets/tt1.png",
                    title: "Jack & Jones",
                    onTap: () {
                      // Navigate to the accessories category
                    },
                  ),
                  CategoryCard(
                    image: "assets/facebooklogo.png",
                    title: "Burberry",
                    onTap: () {
                      // Navigate to the accessories category
                    },
                  ),
                  CategoryCard(
                    image: "assets/googlelogo.png",
                    title: "Pantaloons",
                    onTap: () {
                      // Navigate to the accessories category
                    },
                  ),
                  CategoryCard(
                    image: "assets/googlelogo.png",
                    title: "Louis Philippe",
                    onTap: () {
                      // Navigate to the accessories category
                    },
                  ),
                  CategoryCard(
                    image: "assets/googlelogo.png",
                    title: "Gini & Jony",
                    onTap: () {
                      // Navigate to the accessories category
                    },
                  ),
                  // Remaining CategoryCard widgets...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Remaining CategoryCard class...
class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  CategoryCard({
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                )

            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
