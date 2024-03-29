import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: Container(
          color: Colors.white,
        ), // create empty container with desired height
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile section
                Container(
                  height: 300,
                  margin: const EdgeInsets.all(20),
                  //only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile1.PNG'),
                      fit: BoxFit.cover,
                    ),

                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/myself.jpg'),
                          ),
                          IconButton(
                            onPressed: () {
                              // perform action on edit button press
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 70),
                      Text(
                        'Tharun Rachabanti',
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'tharunrachabanti@gmail.com',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                //const SizedBox(height: 10),
                // Login and Signup section
                Container(
                  margin: const EdgeInsets.all(20),
                  //only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // navigate to login screen
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.teal,
                          backgroundColor: Colors.teal,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {
                          // navigate to signup screen
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // const SizedBox(height: 20),
                // Orders section

                Container(
                  margin: const EdgeInsets.all(20),
                  //only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.shopping_bag),
                        title: const Text('Orders',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to orders screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.shopping_cart),
                        title: const Text('Bag',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to bag screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.help_center),
                        title: const Text('Help Center',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to help center screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.question_answer),
                        title: const Text('FAQs',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to FAQs screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.info),
                        title: const Text('About Us',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to about us screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.description),
                        title: const Text('Terms of Use',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // navigate to terms of use screen
                        },
                      ),
                      const Divider(height: 1, indent: 20, endIndent: 20),
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: const Icon(Icons.logout),
                        title: const Text('Logout',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
