import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
List<XFile> images = [];

class Vr3dScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(

        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            child: SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      //decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                      // ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                'Height - 180cms',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                'Weight - 55kgs',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                'Chest - 45cm',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      //decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey),
                      // ),






                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          size: 80.0,
                        ),
                        onPressed: () async {
                          final picker = ImagePicker();
                          for (int i = 0; i < 2; i++) {
                            final pickedFile = await picker.getImage(source: ImageSource.camera);
                            if (pickedFile != null) {
                              images.add(pickedFile as XFile);
                            }
                          }

                          // Prompt the user to submit the images
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Submit Images?"),
                              content: Text("Do you want to submit these images?"),
                              actions: [
                                TextButton(
                                  child: Text("Cancel"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text("Submit"),
                                  onPressed: () {
                                    // Process the images and submit
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),









                    ),
                  ),
                  Expanded(
                    child: Container(
                      // decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                      //),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                'Wrist - 54cm',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height: 30,
                            child: Center(
                              child: Text(
                                'foot - 32cm',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white70,
                            ),
                            height:30,
                            child: Center(
                              child: Text(
                                'Sholder - 34cm',
                                style: TextStyle(
                                  fontSize: 15,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 1
                                    ..color = Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}