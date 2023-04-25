import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.nightlight,
              color: Colors.grey,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ROW 01
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CONTAINER 01
                Container(
                  width: 215,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 2))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age (In Year)"),
                      Text(
                        "24-2022",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.remove_circle_rounded,
                            color: Colors.purpleAccent,
                            size: 50,
                          ),
                          // Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons.add_circle_rounded,
                            color: Colors.purpleAccent,
                            size: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                // CONTAINER 2
                Container(
                  width: 215,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 2))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight (Kg)"),
                      Text(
                        "100",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 40),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.remove_circle_rounded,
                            color: Colors.purpleAccent,
                            size: 50,
                          ),
                          Icon(
                            Icons.add_circle_rounded,
                            color: Colors.purpleAccent,
                            size: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 450,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(0, 2))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 220),
                      child: Icon(Icons.switch_right_sharp,
                          color: Colors.purpleAccent)),
                  Text(
                    "Height",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18,color: Colors.brown),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "5'",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(Icons.arrow_downward),
                          ],
                        ),
                        width: 130,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "8''",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(Icons.arrow_downward),
                          ],
                        ),
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 450,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(0, 2))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "I'M",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.swap_horiz_rounded,
                          color: Colors.purpleAccent),
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}