import 'package:flutter/material.dart';

void main() => runApp(const PointsCounter());

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0, teamBPoints = 0;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: const TextStyle(
                          fontSize: 110,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamAPoints++;
                            },
                          );
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamAPoints += 2;
                            },
                          );
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamAPoints += 3;
                            },
                          );
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 40,
                    endIndent: 30,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: const TextStyle(
                          fontSize: 110,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamBPoints++;
                            },
                          );
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamBPoints += 2;
                            },
                          );
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              teamBPoints += 3;
                            },
                          );
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  setState(
                    () {
                      teamAPoints = teamBPoints = 0;
                    },
                  );
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
