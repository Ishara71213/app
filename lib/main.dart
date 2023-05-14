import 'package:flutter/material.dart';
import 'testing/testOne/request.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Request> req = [
    Request(name: 'John', email: 'smith@gmail.com'),
    Request(name: 'amber', email: 'jane@gmail.com'),
    Request(name: 'karl', email: 'karl@gmail.com'),
  ];

  var imageFile;

  Future getImage(bool isCamera) async {
    final image;
    if (isCamera) {
      image = await ImagePicker().pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }

    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision Mate'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 9, 99, 247),
        elevation: 0,
      ),
      body: imageFile == null
          ? Container(
              color: const Color.fromARGB(255, 244, 243, 243),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Container(
                  //   margin: const EdgeInsets.only(bottom: 18),
                  //   padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
                  //   decoration: BoxDecoration(
                  //       color: const Color.fromARGB(255, 232, 232, 234),
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child: Column(
                  //     //Name card
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: const <Widget>[
                  //       Padding(
                  //         padding: EdgeInsets.only(bottom: 10),
                  //         child: Text(
                  //           "487,287",
                  //           style: TextStyle(
                  //               fontSize: 18,
                  //               color: Color.fromARGB(255, 100, 99, 99),
                  //               fontFamily: 'Lato',
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ),
                  //       Text(
                  //         "Blind",
                  //         style: TextStyle(
                  //             fontSize: 16,
                  //             fontFamily: 'Lato',
                  //             color: Color.fromARGB(255, 148, 148, 148),
                  //             fontWeight: FontWeight.w400),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 232, 234),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      //Name card
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Madushanka Ishara",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 100, 99, 99),
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "Member Since 27 Septembger 2020",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lato',
                              color: Color.fromARGB(255, 148, 148, 148),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 9, 99, 247)),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(top: 16, bottom: 16)),
                        ),
                        child: const Text(
                          "Learn to answer a call",
                          style: TextStyle(
                              color: Color.fromARGB(255, 225, 227, 230),
                              fontFamily: 'Lato',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        )),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  //   decoration: BoxDecoration(
                  //       color: const Color.fromARGB(255, 232, 232, 234),
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child: Column(
                  //     //Name card
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: const <Widget>[
                  //       Text(
                  //         "You will recive a notification when someone \n needs your help",
                  //         textAlign: TextAlign.center,
                  //         style: TextStyle(
                  //             fontSize: 16,
                  //             fontFamily: 'Lato',
                  //             color: Color.fromARGB(255, 148, 148, 148),
                  //             fontWeight: FontWeight.w400),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ))
          : Image.file(imageFile, height: 300.0, width: 300.0),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 9, 99, 247),
          onPressed: () {
            getImage(true);
          },
          child: const Icon(
            Icons.camera,
            size: 28,
            color: Color.fromARGB(255, 237, 238, 241),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        // color: const Color.fromARGB(255, 9, 99, 247),
        child: SizedBox(
          height: 75.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mail,
                    size: 28,
                    color: Color.fromARGB(255, 9, 99, 247),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat,
                    size: 28,
                    color: Color.fromARGB(255, 9, 99, 247),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat,
                    size: 28,
                    color: Color.fromARGB(255, 9, 99, 247),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 28,
                    color: Color.fromARGB(255, 9, 99, 247),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
