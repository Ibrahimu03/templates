import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial/main.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: const Text("insta clone"),
        backgroundColor: Colors.black26,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.send_outlined))
        ],
      ),

      body: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: Container(
                height: 350,
                width: double.infinity,
                margin: EdgeInsets.all(3.0),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orangeAccent,
                ),

                child: Container(
                  child: Row(
                    children: const [
                      SizedBox(width: 10,),

                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),

                      SizedBox(width: 15,),

                      Text("Username", style: TextStyle(fontSize: 20),),
                      
                      SizedBox(width: 190,),
                      
                      Icon(Icons.menu_rounded),

                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
