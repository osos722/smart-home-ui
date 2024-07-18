import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  @override
  _LivingRoomState createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  int toggle2 = 0;
  int currentval2 = 30;
  int tv=0;
  int aircon1=0;
  void onChanged(double value) {
    setState(() {
      currentval2 = value.toInt();
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
            SizedBox(height: 50),
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
                        "Livingroom",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 25),
                      IconButton(
                        icon: Icon(Icons.light_mode_rounded,
                          color: toggle2 == 1 ? Colors.yellow : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            toggle2 = toggle2 == 0 ? 1 : 0;
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
                              value: currentval2.toDouble(),
                              min: 0,
                              max: 100,
                              onChanged: onChanged,
                            ),
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "${currentval2.toInt()}",
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
            SizedBox(height: 80),
      Row(
        children:[
          SizedBox(width: 25,),
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
                    Icons.tv,
                    size: 40,
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        tv = tv == 0 ? 1 : 0;
                      });
                    },
                    icon: Icon(
                      tv == 0 ? Icons.toggle_off : Icons.toggle_on,
                      color: tv == 0 ? Colors.grey : Colors.green,
                      size: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "TV",
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
                  Icons.ac_unit,
                  size: 40,
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {
                    setState(() {
                      aircon1= aircon1 == 0 ? 1 : 0;
                    });
                  },
                  icon: Icon(
                    aircon1 == 0 ? Icons.toggle_off  : Icons.toggle_on,
                    color: aircon1 == 0 ? Colors.grey : Colors.green,
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
                        aircon1++;
                      });
                    },
                    icon: Icon(Icons.add,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                ),
                Text(
                  "$aircon1",
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
                        aircon1--;
                      });
                    },
                    icon: Icon(Icons.minimize_rounded,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text(
              "Air Conditioning",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),])
    ]
    )));
  }
}
