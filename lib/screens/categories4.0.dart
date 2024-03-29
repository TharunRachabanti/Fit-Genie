import 'package:flutter/material.dart';

class CategoriesScreen4 extends StatelessWidget {
  const CategoriesScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final titles = [
            'Girlsclothes',
            'Boysclothes',
            'Girlsfootwear',
            'Boysfootwear',
            'Sportswear',
            'Winterwear',
            'Summerwear',
            'Nightwear',
            'Watches',
            'Bags',
          ];
          //final subtitles = [
          // 'Lorem ipsum dolor sit amet, consectetur adipiscing elit 1.',
          //'Lorem ipsum dolor sit amet, consectetur adipiscing elit 2.',
          //'Lorem ipsum dolor sit amet, consectetur adipiscing elit 3.',
          //'Lorem ipsum dolor sit amet, consectetur adipiscing elit 10.',
          //];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  // Handle tap on list item
                },
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/photosC${index + 1}.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titles[index],
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          //Text(
                          //subtitles[index],
                          //style: const TextStyle(
                          //fontSize: 14.0,
                          //color: Colors.grey,
                          //),
                          //),
                        ],
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
