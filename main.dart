import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    //drawer / end Drawer
    return Scaffold(
      appBar: AppBar(
        title: Text('DRAWER APP',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Colors.brown.shade300,
                  Colors.grey,
                ],
              )
            ),
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Row(children: [
                         CircleAvatar(
                            radius:30,
                          backgroundImage: NetworkImage("https://img.freepik.com/premium-photo/character-design_1258715-203843.jpg?"
                              "size=626&ext=jpg&ga=GA1.1.1501662735.1725561081&semt=ais_hybrid"),
                          ),

                         SizedBox(width: 10),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wasif Khan',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Junior Flutter Developer'),
                              Text('m.wasif9905@gmail.com')
                            ])
                      ]),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.folder),
                  title: Text('My Files'),
                ),
                ListTile(
                  leading: Icon(Icons.upload),
                  title: Text('Uploads'),
                ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text('Shared with me'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Starred'),
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Trash'),
                ),
                ListTile(
                  leading: Icon(Icons.upload),
                  title: Text('Uploads'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ],
            ),


          )),
     body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText('Eat',textStyle: TextStyle(fontSize: 60,fontWeight: FontWeight.bold)),
            RotateAnimatedText('Sleep',textStyle:TextStyle(fontSize: 60,fontWeight: FontWeight.bold)),
            RotateAnimatedText('Code',textStyle:TextStyle(fontSize: 60,fontWeight: FontWeight.bold)),
            RotateAnimatedText('Repeat',textStyle:TextStyle(fontSize: 60,fontWeight: FontWeight.bold)),

          ],
          totalRepeatCount: 6,
          pause: Duration(milliseconds: 200) ,
          // displayFullTextOnTap: true,
          //stopPauseOnTap: true,
        )
      ],

    ),
    ),
    backgroundColor: Colors.grey,
    );
  }
}

