import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_home/bathroom.dart';
import 'package:smart_home/bedroom.dart';
import 'package:smart_home/kitchen.dart';
import 'package:smart_home/livingroom.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:homepage()
    );
  }
}

class homepage extends StatelessWidget{
  @override
  Widget  build(BuildContext context){
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
                    children: [
                      Text(
                          "Welcome Home!!",
                          style:TextStyle(
                              color:Colors.white54,
                              fontSize:20
                          )
                      ),
                      SizedBox(
                          height:5
                      ),
                      Text(
                        "Osama",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:17
                        ),
                      )
                    ],
                  )  , //welcome and name
                  SizedBox(width: 90,),
                  Container(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor:Colors.white38 ,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                      width:10
                  ),
                  CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://img.youm7.com/ArticleImgs/2024/6/13/1254118-447052551_779363067732643_3889433918993544697_n.jpg')
                  )
                ],
              ), //appbar
              SizedBox(
                height:50,
              ),
              Expanded(
                child: ListView(
                  children: [
                    rooms(1,context,"Bedroom","Smart Lamb"," air conditioning","Window Blinds"),
                    SizedBox(height: 20,),
                    rooms(2,context,"Kitchen","Microwave","Fridge","Extractor Hood"),
                    SizedBox(height: 20,),
                    rooms(3,context,"Living Room","TV","Smart Lamb"," air conditioning"),
                    SizedBox(height: 20,),
                    rooms(4,context,"Bathroom","Electrical Heater","Smart lamb","smart mirror"),
                  ],
                ),
              )
            ],
          ),
        )//whole scrren
    );
  }
}
ThemeData lightMode=ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: Colors.white38
  ),
);
ThemeData darkmode=ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Colors.black45
    )
);

Widget rooms( int num,BuildContext context, String roomname,String comp1,String comp2,String comp3) {
  Widget createinstance (){
    if(num==1) {
      return Bedroom();
    }
    else if(num==2){
      return Kitchen();
    }
    else if(num==3){
      return LivingRoom();
    }
    else if(num==4){
      return Bathroom();
    }
    else {
      return Scaffold();
    }
  }

  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>createinstance(),
          ));
    },

    child: Container(
      padding: EdgeInsets.all(16.0),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Text(
            '${roomname}',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40
            ),
          ),
          SizedBox(
            height:20,
          ),
          Text(
            "${comp1}",
            style: TextStyle(
                fontSize: 20
            ),
          ),
          SizedBox(width: 10,),
          Text(
            "${comp2}",
            style: TextStyle(
                fontSize: 20
            ),),
          SizedBox(width: 10,),
          Text(
            "${comp3}",
            style: TextStyle(
                fontSize: 20
            ),
          ),
          SizedBox(width: 10,),
        ],
      ),
    ),
  );
}











