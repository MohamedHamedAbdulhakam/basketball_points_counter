import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("points counters"),
        ),
        body: Column(
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$TeamAPoints",
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamAPoints++;
                          setState(() {});
                        },
                        child: Text('add 1 point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamAPoints += 2;
                          setState(() {});
                        },
                        child: Text('add  point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamAPoints += 3;
                          setState(() {});
                        },
                        child: Text('add 3 point'))
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Color(0xff617d8a),
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$TeamBPoints",
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamBPoints++;
                          setState(() {});
                        },
                        child: Text('add 1 point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamBPoints += 2;
                          setState(() {});
                        },
                        child: Text('add  point')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {
                          TeamBPoints += 3;
                          setState(() {});
                        },
                        child: Text('add 3 point'))
                  ],
                )
              ],
            ),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  TeamBPoints = 0;
                  TeamAPoints = 0;
                  setState(() {});
                },
                child: Text('reset')),
            Spacer()
          ],
        ),
      ),
    );
  }
}
