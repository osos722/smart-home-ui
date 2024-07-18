import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kitchen extends StatefulWidget {
  @override
  _KitchenState createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
  int micro = 0;
  int fridge=0;
  int hood=0;
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
                      "Welcome Home!!",
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
            SizedBox(height: 60),
            // Add more widgets here as needed
            Column(
              children:[ Row(children: [
                SizedBox(width:20),
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
                            Icons.microwave,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                micro = micro == 0 ? 1 : 0;
                              });
                            },
                            icon: Icon(
                              micro == 0 ? Icons.toggle_off : Icons.toggle_on,
                              color: micro == 0 ? Colors.grey : Colors.black,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width:20),
                          IconButton(
                              onPressed: (){
                                setState(() {
                                  micro++;
                                });
                              },
                              icon: Icon(Icons.add,
                              color:Colors.black
                              )
                          ),
                          Text("$micro",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                          ),

                          IconButton(
                              onPressed: (){
                                setState(() {
                                  micro--;
                                });
                              },
                              icon: Icon(Icons.minimize,
                              color: Colors.black,
                                size: 23,
                              )
                          ),
                        ],
                      ),
                      Text(
                        "Microwave",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10,),
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
                            Icons.kitchen,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(fridge==0){
                                  fridge++;
                                }
                                else if(fridge==1){
                                  fridge--;
                                }
                              });
                            },
                            icon: Icon(
                              fridge == 0 ? Icons.toggle_off : Icons.toggle_on,
                              color: fridge == 0 ? Colors.grey : Colors.black,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 57,),
                      Text(
                        "Fridge",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
              ]),
                //---------------------------------------
                SizedBox(height: 50,),
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
                            Icons.mode_fan_off_outlined,
                            size: 40,
                          ),
                          SizedBox(width: 30),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(hood==0){
                                  hood++;
                                }
                                else if(hood==1){
                                  hood--;
                                }
                              });
                            },
                            icon: Icon(
                              hood == 0 ? Icons.toggle_off : Icons.toggle_on,
                              color: hood == 0 ? Colors.grey : Colors.black,
                              size: 60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 57,),
                      Text(
                        "Fridge",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                )
            ]
            ),
          ],
        ),
      ),
    );
  }
}
