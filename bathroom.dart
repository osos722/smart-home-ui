import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
class Bathroom extends StatefulWidget {
  @override
  _BathroomState createState() => _BathroomState();
}

class _BathroomState extends State<Bathroom> {
  int mirror = 0;
  int heater = 0;
  int currentval3 = 80; // Initial value of the slider
  int toggle = 0;

  void onChanged(double value) {
    setState(() {
      currentval3 = value.toInt(); // Update the slider value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome bed!!",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Osama",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 90),
                Container(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white38,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://img.youm7.com/ArticleImgs/2024/6/13/1254118-447052551_779363067732643_3889433918993544697_n.jpg'),
                ),
              ],
            ),
            SizedBox(height: 50),//batman/////////////////////////////
            //here we go ...........................
            Container(
              padding: EdgeInsets.all(16),
              width: 340,
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Smart Lamp     ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Bedroom",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 25),
                      IconButton(
                        icon: Icon(Icons.light_mode_rounded,
                          color: toggle == 1 ? Colors.yellow : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            toggle = toggle == 0 ? 1 : 0;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.lightbulb_outline_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 10,
                            ),
                            child: Slider(
                              value: currentval3.toDouble(),
                              min: 0,
                              max: 100,
                              onChanged: onChanged,
                            ),
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "${currentval3.toInt()}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Recent Used Devices",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 120),
                Text(
                  "ALL",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  width: 150,
                  height: 200,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.tab_sharp,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                mirror= mirror == 0 ? 1 : 0;
                              });
                            },
                            icon: Icon(
                              mirror == 0 ? Icons.toggle_off : Icons.toggle_on,
                              //ppppppppppppppppppppppppppppppppppppppppppppppp
                              color: mirror == 0 ? Colors.grey : Colors.green,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Smart Mirror",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  width: 150,
                  height: 200,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.theaters_rounded,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                heater = heater == 0 ? 1 : 0;
                              });
                            },
                            icon: Icon(
                              heater == 0 ? Icons.toggle_off  : Icons.toggle_on,
                              color: heater == 0 ? Colors.grey : Colors.green,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Center(
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  heater++;
                                });
                              },
                              icon: Icon(Icons.add,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                          ),
                          Text(
                            "$heater",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          ),

                          Center(
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  heater--;
                                });
                              },
                              icon: Icon(Icons.minimize,
                                color: Colors.white,
                                size: 27,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Electrical Heater",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
