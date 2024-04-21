import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPointer extends StatefulWidget {
  const CounterPointer({super.key});

  @override
  State<CounterPointer> createState() => _CounterPointerState();
}

class _CounterPointerState extends State<CounterPointer> {
  int teamApointer = 0;
  int teamBpointer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "points Counter",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Team A",
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                  Text(
                    "$teamApointer",
                    style: TextStyle(color: Colors.black, fontSize: 90),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer++;
                        });
                      },
                      child: Text("Add 1 Point")),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer+=2;
                        });
                      },
                      child: Text("Add 2 Point")),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer+=3;
                        });
                      },
                      child: Text("Add 3 Point")),
                ],
              ),
              SizedBox(
                height: 16,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                  endIndent: 6,
                  indent: 6,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Team B",
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                  Text(
                    "$teamBpointer",
                    style: TextStyle(color: Colors.black, fontSize: 90),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer++;
                        });
                      },
                      child: Text("Add 1 Point")),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer+=2;
                        });
                      },
                      child: Text("Add 2 Point")),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApointer+=3;
                        });
                      },
                      child: Text("Add 3 Point")),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  maximumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamApointer = 0;
                  teamBpointer = 0;
                });
              },
              child: Text("Reset")),
        ],
      ),
    );
  }
}
