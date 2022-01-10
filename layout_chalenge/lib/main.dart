import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainPage();
  }
}

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: size.height,
                  width: size.width * 1 / 3,
                  child: Page2(),
                ),
                Container(
                  height: size.height,
                  width: size.width * 1 / 3,
                  color: Colors.pink,
                ),
                Container(
                  height: size.height,
                  width: size.width * 1 / 30,
                  color: Colors.white,
                ),
                Container(
                  child: Container(
                    // alignment: Alignment.bottomCenter,
                    color: Colors.pink,
                    height: size.height,
                    width: size.width * 3 / 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: RawMaterialButton(
                          shape: CircleBorder(),
                          fillColor: Colors.blue,
                          onPressed: () {},
                          child: Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 50,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: size.height * 25 / 77,
              left: size.width * 7 / 54,
              child: Container(
                  height: 100,
                  width: size.width * 1 / 4,
                  color: Colors.black.withOpacity(0.2)))
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey,
                              height: size.height / 16,
                              width: size.width / 9,
                            ),
                            Container(
                              color: Colors.orange,
                              height: size.height / 16,
                              width: size.width / 9,
                            ),
                            Container(
                              color: Colors.blueGrey,
                              height: size.height / 16,
                              width: size.width / 9,
                            ),
                            Container(
                              color: Colors.pink,
                              height: size.height / 16,
                              width: size.width / 9,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.blue,
                              width: size.width * 2 / 9,
                              height: size.height * 3 / 16,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    color: Colors.green,
                                    height: size.height * 1 / 16,
                                    width: size.width * 1 / 9,
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    height: size.height * 1 / 16,
                                    width: size.width * 1 / 9,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  height: size.height / 4,
                  width: size.width,
                ),
                Container(
                  color: Colors.yellow,
                  height: size.height / 4,
                  width: size.width,
                ),
                Container(
                  color: Colors.white,
                  height: size.height / 4,
                  width: size.width,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
